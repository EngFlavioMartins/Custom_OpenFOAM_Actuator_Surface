#

1. *Run 
>> blockMesh 
to create the fluid domain and "polyMesh" folder

2. *Run 
>> surfaceMeshTriangulate <name_of_STL_file.stl> 
to convert the blockMesh volume into a stl file.
Obs.: make sure to comment everything inside "functions" in ./system/controlDict

3. Set parameters of computational mesh in ./system/meshDict

4. Run 
>> cartesianMesh

5. (optional) Run
>>  renumberMesh -overwrite
To reduce the bandwidth reading the cell list 
 Run
>> checkMesh
To check the mesh quality

6. Backup the newly-created polyMesh folder using: 
>> cp -r ./constant/polyMesh/ ./constant/polyMesh.backup

7. (optional) Run 
>> touch mesh.foam 
to create a mesh that can be visualized using paraView

8. Run 
>> Allrun 
To run the simulation! (Note: it also runs "Allrun.pre")

9. Run
>> Allclean
If you want to delete all simulation data (stuff created from steps 4 to 8)



*skip if "*.stl" file exists on root!

- To re-run simulations, simply run steps 9 and 9 in order.
- To change the meshing settings for a CONSECUTIVE SIMULTION, i.e., if you already have the domain.stl file, run steps 3 to 8 only