# cf-json-query
Javascript function that converts a Coldfusion 10 JSON Formatted Query Object to Standard JSON.

## Files
### bikes.cfc
Sample endpoint that returns a JSON serialized Coldfusion Query Object that looks like this:

<pre><code>
{
    "COLUMNS": [
        "BIKEID",
        "YEAR",
        "BRAND",
        ...
    ],
    "DATA": [
        [
            "1",
            "2015",
            "Cannondale",
            ...
        ],
        [
            "2",
            "2012",
            "Scott",
            ...
        ],
        [
            "3",
            "2010",
            "Specialized",
            ...
        ]
    ]
}
</code></pre>

Noce that Coldfusion separates Columns and Data, as well as sets the column names to all caps.

### cf-json-query.js

Javascript code that converts Coldfusion JSON Serialized query object to follow this format:

<pre><code>
{
    "Bikes": [
                {
                    "bikeid" : 1,
                    "year" : 2015,
                    "brand" : "Cannondale",
                    ...
                },
                {
                    "bikeid" : 2,
                    "year" : 2012,
                    "brand" : "Scott",
                    ...
                },
                {
                    "bikeid" : 3,
                    "year" : 2010,
                    "brand" : "Specialized",
                    ...
                }
            ]
}
</code></pre>

### index.html

Demonstrates how to call the data and convert the response.
