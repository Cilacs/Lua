# Documentation

*Documentation of filemodules THIS MODULE IS TO SAVE TIME*

------

#### **1st Steps: Using the filemodules Library**

**Inserting the filemodules Library:**

1. Copy the filemodules Library's [Source Code](https://raw.githubusercontent.com/Cilacs/Lua/main/filemodules/source.lua)
2. Create a file inside of your Computer (Repl, Repository, ...)
3. Insert the source code
4. Follow the following steps

**Booting up the filemodules Library:**

```lua
local filemodules = require("filemodules <NAME OF FILE WHERE YOU SAVED THE SOURCE CODE (WITHOUT . ...)")
```

- **Files**
  
  - **Writing**
    
    - ```lua
      local path = filemodules:writefile(path, content)
      ```
      - Does not return file
      - Takes: path <string>, content <string>
      - Overwrites the given file
      - Soon to return file path
        
  - **Appending**
    
    - ```lua
      filemodules:appendfile(path, content)
      ```
      - Does not return file
      - Takes: path <string>, content <string>
      - Appends content to given file (if found in given directory)
        
  - **Deleting**
    
    - ```lua
      filemodules:delfile(path)
      ```
      - Does not return file
      - Takes: path <string>
      - Deletes given file (if found in given directory)
        
  - **Reading**
    
    - ```lua
      local read = filemodules(path <string>)
      ```
      - Returns file content
      - Takes: path <string>
      - Reads given file (if found in given directory)
