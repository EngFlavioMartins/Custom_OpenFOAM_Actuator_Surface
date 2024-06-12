# Custom OpenFOAM Actuator Surface

<p align="center">
<img src="Resources/Render.png"  width="600px">
</p>

## Description

This project features a custom implementation of an actuator-surface model in OpenFOAM (v9) thorugh fvOptions that eliminates the need for compiling additional files.

1. You can easily define the dimensions of the actuator surfaces using the standard `./Solver/system/topoSetDict` dictionary in OpenFOAM. 

2. The input parameters are:

      - $C_x$: Thrust force coefficient of the actuator surface

      - $C_y$: Lift force coefficient for the lift-generating devices

      - $A$: Area of the actuator surface

      - $U_\infty$: Free-stream velocity

Such that the forcing terms added to the momentum equation are estimated using:

$$ F_x = \frac{1}{2} \rho A U_\infty^2 C_x $$

$$ F_y = \frac{1}{2} \rho A U_\infty^2 C_y $$

Here, $F_x$ is uniformly distributed across the actuator surface, while $F_y$ is applied to the lift-generating devices.

To adjust the forces on the actuator surface and blades, modify the entries on `./Solver/ActuatorSetup`


To adjust other parameters, such as disk location and area, modify the input parameters on `./Solversystem/topoSetDict`

The momentum source code that reads the files above is located at `./Solver/constant/fvOptions`


## Author
  
**Flavio Martins**

Technical University Delft, Faculty of Aerospace Engineering, Wind Energy Section

Delft, The Netherlands

<a
    id="cy-effective-orcid-url"
    class="underline"
     href="https://orcid.org/0000-0002-1374-5760"
     target="orcid.widget"
     rel="me noopener noreferrer"
     style="vertical-align: top">
     <img
        src="https://orcid.org/sites/default/files/images/orcid_16x16.png"
        style="width: 1em; margin-inline-start: 0.5em"
        alt="ORCID iD icon"/>
      https://orcid.org/0000-0002-1374-5760
</a>


## Requirements  

* This project only requires the installation of [OpenFOAM v9](https://github.com/OpenFOAM/OpenFOAM-9)

* In addition, the user can also post-process their data using the included Jupyter notebook by installing [Miniconda](https://docs.anaconda.com/free/miniconda/).


<!--- Provide details of the software required   
    * Add a `requirements.txt` file to the root directory for installing the necessary dependencies.   
    * Describe how to install requirements e.g. when using pip:  

        To install requirements:

        ```
            setup
            pip install -r requirements.txt
        ```

    * Alternatively, create an INSTALL.md. 
    * Provide any further instructions on how others can make sure the scripts are running for benchmarking examples (e.g. by using computational notebooks such as Jupyter notebooks) 
-->

## How to run: 

You can easily run this custom OpenFOAM disk actuator model on your local machine or on TU Delft's DelftBlue supercomputer. The momentum source representing the actuator surfaces is auto-compiled during execution, so no extra setup is needed. Below, you'll find instructions on how to run the simulations.

### From your local machine

Simply execute:

~~~ 
run-all-cases.sh 
~~~

to have all test cases run in sequence (batch run), or:

~~~ 
./Solver/Allrun.sh
~~~ 

to run one test case.


### From TU Delft's DelftBlue computer

Below, it is illustrated how to run the OpenFOAM simulation on TU Delft's DelftBlue supercomputer from the folder `~/my_openfoam_folder/`.

Run from the project's root folder on your local machine:

~~~ 
rsync -avx ./Solver  delftblue:~/Solver
ssh <netid>@login.delftblue.tudelft.nl
~~~ 

On the SSH environment:

~~~ 
cd ~/my_openfoam_folder/Solver
sbatch Allrun.sh
~~~ 

To visualize the status of your request, use:

~~~ 
squeue --account <netid>
~~~ 

Subsequently, to print the evolution of the solution, one can use the command below to print the last 30 lines of the `./log.simpleFoam` file every 60 s:


~~~ 
watch -n 60 tail -n 30 log.simpleFoam
~~~ 


## License and Citation

### License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)  

The contents of this repository are licensed under a **Apache License 2.0** license.

TU Delft hereby disclaims all copyright interest in the program “**Disk Actuator model in OpenFOAM**”, an OpenFOAM case file with custom disk-actuator solver meant for running at local machines or clusters, written by the Author(s).  

**© 2023, Flavio Martins**

### Hot to cite

This repository is the official implementation of the following paper.

[Paper Title](https://doi.org/YYMM.NNNNN)

If you want to cite this repository in your research paper, please use the following information: 

~~~
Bibtex code
~~~

When referencing this code, please **cite the publication linked above**. 

If you want to cite this repository (**in specific**) in your research paper, please use the following information:
      
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.11562404.svg)](https://doi.org/10.5281/zenodo.11562404)


<!--- Make the repository citable 
    * If you will be using the Zenodo-Github integration, add the following reference and the DOI of the Zenodo repository:

        If you want to cite this repository in your research paper, please use the following information:
        Reference: [Making Your Code Citable](https://guides.github.com/activities/citable-code/)  

    * If you will be using the 4TU.ResearchData-Github integration, add the following reference and the DOI of the 4TU.ResearchData repository:

        If you want to cite this repository in your research paper, please use the following information:   
        Reference: [Connecting 4TU.ResearchData with Git](https://data.4tu.nl/info/about-your-data/getting-started)   
-->


## Bibligraphy

For more information on how to run OpenFOAM application on DelftBlue, refer to:

 * [DelftBlue documentation (OpenFOAM)](https://doc.dhpc.tudelft.nl/delftblue/howtos/openfoam/) 

For some backgound on Momentum theory, please refer to:

 * *Burton, Tony, Nick Jenkins, David Sharpe, and Ervin Bossanyi. Wind energy handbook. John Wiley & Sons, 2011.*
 * *Katz, Joseph, and Allen Plotkin. Low-speed aerodynamics. Vol. 13. Cambridge university press, 2001*

For more insights into fundamental aerodymics, also refer to:

* Anderson, John. Fundamentals of Aerodynamics. McGraw Hill, 2011.




## How to contribute

* Want to contribute? Append your names in a separate list of Contributors in the `Readme`; 

* Add your contributions in separate files specifying your copyright attribution at the top of the source files as commented text.