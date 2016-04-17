var i
var objects
for (i = 0; i < instance_number(argument[0]); i += 1)
   objects[i] = instance_find(argument[0], i)

return objects
