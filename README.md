# Welcome to the AI Watch T6 Explorer!

The AI Watch T6 Explorer (AIWatch-T6-X) is an exercise to provide an integrated view of public services using AI, and to derive statistical data from them.

Service records are collected from voluntarily contributed data sources (e.g., surveys, catalogues, datasets), which are harmonised into a common data schema - nothing complicated, just a flat list of attributes, as the name and description of the service, the geographic area covered, its social and policy uptake (if any).

If you are interested in contributing, please follow the instructions outlined in the following section.

# How to contribute

Contributions must be submitted via pull requests (PR) to this repository. The data must be submitted as a CSV (Comma-Separated Values) files, whose columns must have specific names and values. 

The submission steps are the following ones:

## Creating an issue describing your contribution

As a first step, you are recommended to open an issue providing a description of the data source and the services you would like to contribute. This would help understand whether your contribution is in scope with this work, and to verify which information has been collected for the services to be contributed.

## Preparing the files to be submitted

The submission consists of 2 CSV files:
- one describing the data source
- one describing the service records

The columns and values of these files must correspond to the ones defined in the data schema. Please note that all columns not matching the defined names will be ignored.

The `example` folder in this repository includes two empy CSV files with the standard column names. You can copy-paste the data there, and modify the column values (if needed) to match the allowed values.

## Creating a pull request

One the two CSV files are ready, you can create a pull request to the `src` folder.

The title and/or description of the pull request must include a reference to the issue you have previously created.

The two files to be submitted should ideally encoded in UTF-8, and they must have a file name following the pattern:
- `[N]-catalog-[name].csv`
- `[N]-services-[name].csv`

where "N" is an integer, and "name" is the abbreviation of your data source. 

Note that "N" and "name" should correspond to the same values in both files - e.g.:
- `1-catalog-jrc.csv`
- `1-services-jrc.csv`

The value of "N" must be incremental to the ones used in the already contributed data sources in folder `src`.

# Data schema

## Data source

<table>
<thead>
<tr>
<th>Code</th>
<th>Values</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>c_name</code></td>
<td>free text</td>
<td>The name/title of the data source</td>
</tr>
<tr>
<td><code>c_description</code></td>
<td>free text</td>
<td>A brief description of the data source</td>
</tr>
<tr>
<td><code>c_contact</code></td>
<td>email or URL</td>
<td>A contact email / URL for the data source</td>
</tr>
<tr>
<td><code>c_url</code></td>
<td>URL</td>
<td>The URL of the page of the data source</td>
</tr>
<tr>
<td><code>c_publisher</code></td>
<td>free text</td>
<td>The name of the organization who published / released the data source</td>
</tr>
<tr>
<td><code>c_type</code></td>
<td><code>Desk research</code>, <code>Online survey</code>, <code>Catalogue</code></td>
<td>The way service records have been collected</td>
</tr>
</tbody>
</table>

## Service

<table>
<thead>
<tr>
<th>Code</th>
<th>Values</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>id</code></td>
<td>integer</td>
<td>The identifier for the service in the data source, expressed an an integer (starting from 1). In case of multiple submission of the same data source (in case there was an error, or because it has been updated), the identifier MUST NOT CHANGE across the different versions of the data source</td>
</tr>
<tr>
<td><code>name</code></td>
<td>free text</td>
<td>Name of the service/activity</td>
</tr>
<tr>
<td><code>type</code></td>
<td>Innovative potential</a></td>
<td>innovative potential of the cases as defined in in the report <a href=" "https://www.doi.org/10.2760/039619">Overview of the use and impact of AI in public services in the EU</a></td>
</tr>
<tr>
<td><code>url</code></td>
<td>URL</td>
<td>The URL of the page of the service (if any). Preferably, this should be a persistent URL.</td>
</tr>
<tr>
<td><code>contact</code></td>
<td>email or URL</td>
<td>A contact email / URL for the service</td>
</tr>
<tr>
<td><code>description</code></td>
<td>free text</td>
<td>A brief description of the service</td>
</tr>
<tr>
<td><code>geoextent</code></td>
<td>One of the values (from the column 'name') of the <a href="https://ipsoeu.github.io/taxonomy/geo-extent/2019"> geo extent concepts taxonomy</a></td>
<td>The spatial scale (administrative level) at which the service is implemented.</td>
</tr>
<tr>
<td><code>geocoverage</code></td>
<td>Comma-separated list of ISO 3166 country names</td>
<td>The areas covered by the service, specified as a comma-separated list of country names. Country names MUST correspond to those defined in ISO 3166</td>
</tr>
<tr>
<td><code>lead_organization_name</code></td>
<td>free text</td>
<td>Name of the lead organisation. Local name, in native language.</td>
</tr>
<tr>
<td><code>lead_organization_category</code></td>
<td>One of the values from the <a href="https://ipsoeu.github.io/taxonomy/organisation-category/2019">IPS organisation categories taxonomy</a></td>
<td>The category of the lead organisation.</td>
</tr>
<tr>
<td><code>start_date</code></td>
<td>Date in the ISO 8601 format <code>YYYY-MM-DD</code> (e.g., <code>2019-03-04</code>)</td>
<td>The start date of the service</td>
</tr>
<tr>
<td><code>active</code></td>
<td><code>Yes</code>|<code>No</code></td>
<td>Whether the service was or not still active at the moment when it was added to the data source</td>
</tr>
<tr>
<td><code>end_date</code></td>
<td>Date in the ISO 8601 format <code>YYYY-MM-DD</code> (e.g., <code>2019-03-04</code>)</td>
<td>The end date of the service</td>
</tr>
<tr>
<td><code>primary_sector</code></td>
<td>One of the values from  COFOG I taxonomy</a></td>
<td>Main government division (COFOG I level). The Classification of the Functions of Government (COFOG) classifies government expenditure into ten main categories (divisions known as the COFOG I level breakdown).</td>
</tr>
<tr>
<td><code>secondary_sector</code></td>
<td>One of the values from the COFOG II taxonomy</a></td>
<td>Government group (COFOG II level)
Distribution of government group for the collected cases. The Classification of the Functions of Government (COFOG) further classifies government expenditure into a II level breakdown or group.</td>
</tr>
<tr>
<td><code>cross_sector</code></td>
<td><code>Yes</code>|<code>No</code></td>
<td>Whether the service is used or can be used across sectors, or in cross-sector scenarios.</td>
</tr>
<tr>
<td><code>cross_border</code></td>
<td><code>Yes</code>|<code>No</code></td>
<td>Whether the service is used or can be used across borders, or in cross-border scenarios.</td>
</tr>
<tr>
<td><code>technology</code></td>
<td>AI typology. One of the 10 AI application domains identified in the report <a href=" "https://www.doi.org/10.2760/039619">Overview of the use and impact of AI in public services in the EU</a></td>
<td>The AI typology used in the service.</td>
</tr>
<tr>
<td><code>status</code></td>
<td>One of the values from the <a href="https://ipsoeu.github.io/taxonomy/status/2019">IPS status taxonomy</a></td>
<td>The maturity level of the service.</td>
</tr>
<tr>
<td><code>uptake</code></td>
<td>One of the values of AI uptake identified in the report <a href=" "https://www.doi.org/10.2760/039619">Overview of the use and impact of AI in public services in the EU</a></td>
<td>
<p>The purpose of AI update of the service.</p>
</td>
</tr>
</tbody>
</table>


