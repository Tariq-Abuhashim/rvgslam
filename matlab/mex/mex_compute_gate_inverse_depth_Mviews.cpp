#include "mex.h"
#include <iostream> // std::cout
#include <string>

#include "PwgOptimiser.h"

/*  the gateway routine.  */
void mexFunction( int nlhs, mxArray *plhs[],
        int nrhs, const mxArray *prhs[] )
{
    
    /* create a pointer to the real data in the input matrix  */
    double *x = mxGetPr(prhs[0]); /* state vector */
    double *xs = mxGetPr(prhs[3]); /* linearisation point */
    int nfields = mxGetNumberOfFields(prhs[2]); // number of fields in each constraint
    mwSize NStructElems = mxGetNumberOfElements(prhs[2]); // number of constraints
    mxClassID  *classIDflags = (mxClassID *)mxCalloc(nfields, sizeof(mxClassID)); /* allocate memory  for storing classIDflags */
    const char **fnames = (const char **)mxCalloc(nfields, sizeof(*fnames)); /* pointers to field names */
    
    /* get the covariance matrix - used to convert from MATLAB sparse to C++ memory */
    double *ncams = mxGetPr(prhs[4]);
    long unsigned int ncols = mxGetN(prhs[1]);                     // incase P is sparse or dense
    //long unsigned int *ir = mxGetIr(prhs[1]); /* Row indexing */ // incase P is sparse
    //long unsigned int *jc = mxGetJc(prhs[1]); /* Column count */ // incase P is sparse
    double *s  = mxGetPr(prhs[1]); /* Non-zero elements */         // incase P is sparse or dense
    
    /* get constraints */
    /* Get input MATLAB structure fields data and convert them into C++ fields */
    double *pr;
    mxArray *tmp;
    int cam, kpt, sw = 0;
    std::vector<double> p1(2), z(2), edge(2), R(4,0.0);//, Y(49,0.0), y(7,0.0);
    Eigen::MatrixXd Yz(7,7);
    Eigen::VectorXd yz(7);
    
    /* initialise a PwgOptimiser object */
    PwgOptimiser *Object; // pointer initialisation
    Object = new PwgOptimiser ((int)ncams[0], (int)ncols-6*ncams[0]) ;
    
    for (mwIndex jstruct = 0; jstruct < NStructElems; jstruct++) { /* loop the constraints */
        for (int ifield = 0; ifield < nfields; ifield++) {  /* loop the fields */
            fnames[ifield] = mxGetFieldNameByNumber(prhs[2],ifield); // get field name
            tmp = mxGetFieldByNumber(prhs[2], jstruct, ifield); // get field
            pr = (double *)mxGetData(tmp); // get the field data pointer
            if (ifield==0){// cam
                cam = pr[0];}
            if (ifield==1){// kpt
                kpt = pr[0];}
            if (ifield==2){// p1
                p1[0] = pr[0]; p1[1] = pr[1];}
            if (ifield==3){// z
                z[0] = pr[0]; z[1] = pr[1];}
            if (ifield==4){// R
                R[0] = pr[0]; R[3] = pr[3];}
        } // end of nfields loop
        Object->initialise_a_constraint(cam, kpt, p1, z, R, Yz, yz, sw); // using pointer to object
    } // end of NStructElems loop
    
    // evaluate gate
    plhs[0] = mxCreateDoubleMatrix(1, NStructElems, mxREAL);
    double *gate = mxGetPr(plhs[0]); /* output gate */
    for (int i=0; i<Object->constraints.size(); i++)
        Object->GATE_SWITCH.push_back(i);        /* take all constraints */
    Object->compute_gate_inverse_depth_Mviews( gate, x, s, xs ) ; // using pointer to object
    //Object->compute_gate_inverse_depth_nviews(gate, x, ir, jc, s, xs, ncols, ncams[0]); // using pointer to object
    
    /* Free memory */
    mxFree((void *)fnames);
    mxFree(classIDflags);
    delete Object; // delete class pointer

}
