# Racoon
The railway core ontologies, developed by [The Birmingham Centre for Railway Research and Education](https://www.birmingham.ac.uk/research/railway/index.aspx])

In particular the following people have contributed to their development:
*   https://github.com/jontutcher
*   https://github.com/Chris-MorrisUK
*   Dr Jingfu Wei


## Structure
At the top level there are three related ontologies:

 * Machine Learning     
 * Rule Book     
 * Racoon
 
 ### Racoon
 The original railway core ontology, itself split into a number of modules:
 
 * UB 
 
   The upper level ontology. You can choose between a 3D or 4D (including time) model for the highest level concepts. To date the 3D model has been preferred. 
   The 4D model requires more processing and hasn't been used in real life projects.
   
 * Rail 
 
    Concepts pertaining to the entire rail domain
  
  * Other
  
    Concepts applying to specific project or sub-domain
  
  * Scripts
  
    Very implementation specific scripts to load the data into stardog (predating stardog being available in a container). 
    
     
