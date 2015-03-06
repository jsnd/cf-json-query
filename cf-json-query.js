function convertCfQuery( rawQuery ) {
    var columnArray = rawQuery.COLUMNS;
    var dataArray = rawQuery.DATA;
    var newQuery = [];

    for ( var i = 0; i < dataArray.length; i++ ) {
        var newRow = {};

        for ( var di = 0; di < dataArray[ i ].length; di++ ) {
            newRow[ columnArray[di].toLowerCase() ] = dataArray[ i ][ di ];
        }

        newQuery.push( newRow );

    }

    return newQuery;
};
