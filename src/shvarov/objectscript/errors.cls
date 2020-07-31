Class shvarov.objectscript.errors
{

ClassMethod DIVIDE() As %Status
{
    set sc=$$$OK
   try {
    set a=1/0
   }
   catch e {
       do e.Log()
       set sc=e.AsStatus()
   }
   if 'sc do $System.OBJ.DisplayError(sc)
   quit sc
}

ClassMethod UNDEFINED() As %Status
{
    set sc=$$$OK
   try {
    set a=b
   }
   catch e {
       do e.Log()
       set sc=e.AsStatus()
   }
   if 'sc do $System.OBJ.DisplayError(sc)
   quit sc
}

ClassMethod PARAMETER() As %Status
{
    set sc=$$$OK
   try {
    set a=..DIVIDE(1)
   }
   catch e {
       do e.Log()
       set sc=e.AsStatus()
   }
   if 'sc do $System.OBJ.DisplayError(sc)
   quit sc
}

ClassMethod SUBSCRIPT() As %Status
{
    set sc=$$$OK
   try {
       write $Get(a(""))
    }
   
   catch e {
       do e.Log()
       set sc=e.AsStatus()
   }
   if 'sc do $System.OBJ.DisplayError(sc)
   quit sc
}

ClassMethod SYNTAX() As %Status
{
    set sc=$$$OK
   try {
       xecute "a"
    }
   
   catch e {
       do e.Log()
       set sc=e.AsStatus()
   }
   if 'sc do $System.OBJ.DisplayError(sc)
   quit sc
}

}
