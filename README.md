RScript
=======

This repository is designed to share custom modules, utility codes, applications, and other miscellaneous codes for Azure ML studio. The hierarchy of this repository is:

Repository Structure: 
1. Apps
2. Misc
3. Modules
   3.1 Algorithms\n
       3.1.1 C#\n
       3.1.2 Python\n
   3.2 DataProcessing
4. Utilities
5. VisualizationTools


Please put your codes in properly place in the repository.


 
wow_great_stuff

do_this_and_do_that_and_another_thing.



Here's an example:

```
function test() {
  console.log("notice the blank line before this function?");
}
```



```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```



Tables


First Header  | Second Header
------------- | -------------
Content Cell  | Content Cell
Content Cell  | Content Cell



Table 2
| First Header  | Second Header |
| ------------- | ------------- |
| Content Cell  | Content Cell  |
| Content Cell  | Content Cell  |



#Repository Structure
```
Repository
|
|--Modules                    # Things that can be installed in Studio – reserved for when we support custom modules in that language
    |--DataProcessing         # eg TFIDF, feature extraction, date conversion, risk tables
        |--Python
        |--C#
        |--R
        |--Misc
    |--Algorithms             # Custom algorithms, i.e., Regularized Greedy Forest
        |--Python
        |--C#
        |--R
        |--Misc
    |--Misc                   # Eg call out to data provider
        |--Python
        |--C#
        |--R
        |--Misc
|--Utilities                  # Running outside of Studio, or inside module as script
    |--Python                 # Could be ipython notebook
    |--C#                     # Eg. To interact with AML APIs to copy workspaces
    |--R                      # R scripts inside ExecuteR, external scripts for data. For example code to calculate performance metrics, produce graphs, etc.
    |--Misc
|--Apps                       # apps to drive/consume AzureML, e.g., web apps, mobile apps, Excel plugins.
|--Visualization Tool         # tools/codes for visualization    
|--	Misc 
```

End of the hierarchical structure.





This repository is designed to share custom modules, utility codes, applications, and other miscellaneous codes for Azure ML studio. The hierarchy of this repository is:

#Repository Structure
```
Repository
|
|--Modules                    // Things that can be installed in Studio – reserved for when we support custom modules in that language
    |--DataProcessing         // Codes process the data in Studio, e.g., TFIDF, feature extraction, date conversion, risk tables
        |--Python
        |--C#
        |--R
        |--Misc
    |--Algorithms             // Custom algorithms, i.e., Regularized Greedy Forest
        |--Python
        |--C#
        |--R
        |--Misc
    |--Misc                   // <iscellaneous codes, e.g., call out to data provider
        |--Python
        |--C#
        |--R
        |--Misc
|--Utilities                  // Running outside of Studio, or inside module as script
    |--Python                 // Could be ipython notebook
    |--C#                     // Examples include codes to interact with AML APIs to copy workspaces
    |--R                      // R scripts inside ExecuteR, external scripts for data. For example code to calculate performance metrics, produce graphs, etc.
    |--Misc
|--Apps                       // Apps to drive/consume AzureML, e.g., web apps, mobile apps, Excel plugins.
|--Visualization Tool         // Tools/codes for visualization    
|--	Misc                      // For hard-to-classify items
```
Please put your codes in properly place in the repository.




This repository is designed to share custom modules, utility codes, applications, and other miscellaneous codes for Azure ML studio. The hierarchy of this repository is:

#Repository Structure
```
Repository
1. Modules                    // Things that can be installed in Studio – reserved for when we support custom modules in that language
   1. DataProcessing         // Codes process the data in Studio, e.g., TFIDF, feature extraction, date conversion, risk tables
        1. Python
        2. C#
        3. R
        4. Misc
    2. Algorithms             // Custom algorithms, i.e., Regularized Greedy Forest
        1. Python
        2. C#
        3. R
        4. Misc
    3. Misc                   // <iscellaneous codes, e.g., call out to data provider
        1. Python
        2. C#
        3. R
        4. Misc
2. Utilities                  // Running outside of Studio, or inside module as script
    1. Python                 // Could be ipython notebook
    2. C#                     // Examples include codes to interact with AML APIs to copy workspaces
    3. R                      // R scripts inside ExecuteR, external scripts for data. For example code to calculate performance metrics, produce graphs, etc.
    4. Misc
3. Apps                       // Apps to drive/consume AzureML, e.g., web apps, mobile apps, Excel plugins.
4. Visualization Tool         // Tools/codes for visualization    
5. Misc                      // For hard-to-classify items
```
Please put your codes in properly place in the repository.

