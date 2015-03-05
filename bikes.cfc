component rest=true restPath="bikes"  {

    // returns a query as JSON
    remote query function getBikes() httpmethod="get" produces="application/json" {
		qryBikes = buildBikesQuery();

		return qryBikes;
	};

    // this manually builds a CF query
	private query function buildBikesQuery() {

        // note the variety of column names
		qryBikes = queryNew( "bikeID,Year,Brand,Model,BIKE_type,colorOptions" );

        // column names referenced below are various random case
        queryAddRow( qryBikes );
		querySetCell( qryBikes, "BiKeId", 1);
		querySetCell( qryBikes, "yeAr", 2015);
		querySetCell( qryBikes, "bRANd", 'Cannondale');
		querySetCell( qryBikes, "moDEl", 'SuperSix EVO');
		querySetCell( qryBikes, "bike_TYPE", 'Performance Road');
		querySetCell( qryBikes, "COLORoptions", ['Red / Black','White / Blue']);

		queryAddRow( qryBikes );
		querySetCell( qryBikes, "BIKEid", 2);
		querySetCell( qryBikes, "YeAr", 2012);
		querySetCell( qryBikes, "bRANd", 'Scott');
		querySetCell( qryBikes, "mOdeL", 'Scale 29 Elite Carbon');
		querySetCell( qryBikes, "Bike_Type", 'Hardtail Mountainbike');
		querySetCell( qryBikes, "ColorOptions", ['Natural Black Carbon / Red']);

		queryAddRow( qryBikes );
		querySetCell( qryBikes, "bikeid", 3);
		querySetCell( qryBikes, "year", 2010);
		querySetCell( qryBikes, "brand", 'Specialized');
		querySetCell( qryBikes, "model", 'P Bike');
		querySetCell( qryBikes, "bike_type", 'Dirt Jumper');
		querySetCell( qryBikes, "coloroptions", ['OD Green','Raw','Matte Black']);

		return qryBikes;
	};
}
