<cfscript>
  driveRoots = createObject( 'java', 'java.io.File' ).listRoots();

  for( drive in driveRoots ) {
    writeDump( drive.toString() );
  };
  abort;
</cfscript>
