//******************************************************************************
// Simulator of Web Infrastructure and Management
// Copyright (c) 2016 Carnegie Mellon University.
// All Rights Reserved.
//  
// THIS SOFTWARE IS PROVIDED "AS IS," WITH NO WARRANTIES WHATSOEVER. CARNEGIE
// MELLON UNIVERSITY EXPRESSLY DISCLAIMS TO THE FULLEST EXTENT PERMITTED BY LAW
// ALL EXPRESS, IMPLIED, AND STATUTORY WARRANTIES, INCLUDING, WITHOUT
// LIMITATION, THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE, AND NON-INFRINGEMENT OF PROPRIETARY RIGHTS.
//  
// Released under a BSD license, please see license.txt for full terms.
// DM-0003883
//******************************************************************************

package plasa.modules;



//
// Source that reads arrival times from a file and provides an interface to access the arrival times ahead of time.
//
simple PredictableSource
{
    @display("i=block/source;is=n;i2=status/green,,0");
    @signal[created](type="long");
    @statistic[created](title="the number of jobs created";record=count;interpolationmode=none);
    string jobName @mutable = default("job");         // the base name of the generated job (will be the module name if left empty)
    volatile int jobType @mutable = default(0);       // the type attribute of the created job (used by classifers and other modules)
    volatile int jobPriority @mutable= default(0);   // priority of the job
    string interArrivalsFile @mutable;
    double scale @mutable = default(1); // scale factor 
    double skip @mutable = default(0); //how many units of time to skip from the beginning of the trace
    
    gates:
        output out;
}
