# Welcome to the Innovative Public Services Explorer!

The Innovative Public Services Explorer (IPS-X) is an exercise to provide an integrated view of the public services using innovative technologies, and to derive statistical data from them.

Service records are collected from voluntarily contributed data sources (e.g., surveys, catalogs, datasets), which are harmonised into a common data schema - nothing complicated, just a flat list of attributes, as the name and description of the service, the geographic area covered, its social and policy uptake (if any).

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
<td><code>Desk research</code>, <code>Online survey</code></td>
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
<td><code>description</code></td>
<td>free text</td>
<td>A brief description of the service</td>
</tr>
<tr>
<td><code>contact</code></td>
<td>email or URL</td>
<td>A contact email / URL for the service</td>
</tr>
<tr>
<td><code>url</code></td>
<td>URL</td>
<td>The URL of the page of the service (if any). Preferably, this should be a persistent URL.</td>
</tr>
<tr>
<td><code>lead_organization_name</code></td>
<td>free text</td>
<td>Name of the lead partner. Local name, in native language.</td>
</tr>
<tr>
<td><code>lead_organization_category</code></td>
<td>One of these values: <code>Academic</code>, <code>Consortium</code>, <code>Governmental</code>, <code>Non-governmental</code></td>
<td>The category of the organization who led the service</td>
</tr>
<tr>
<td><code>geoextent</code></td>
<td>One of these values: <code>Global</code>, <code>Macro-regional</code>, <code>National</code>, <code>Sub-national</code>, <code>Regional</code>, <code>City</code>, <code>Neighborhood</code></td>
<td>The spatial scale at which the service is implemented. Subnational is used as generic category for services for which the sub-national scale is not known (i.e. regional, or city, or neighborhood). All regional, city and neighborhood services are also sub-national services.</td>
</tr>
<tr>
<td><code>geocoverage</code></td>
<td>Comma-separated list of ISO 3166 country names</td>
<td>The areas covered by the service, specified as a comma-separated list of country names. Country names MUST correspond to those defined in ISO 3166</td>
</tr>
<tr>
<td><code>start_date</code></td>
<td>Date in the ISO 8601 format <code>YYYY-MM-DD</code> (e.g., <code>2019-03-04</code>)</td>
<td>The start date of the service</td>
</tr>
<tr>
<td><code>end_date</code></td>
<td>Date in the ISO 8601 format <code>YYYY-MM-DD</code> (e.g., <code>2019-03-04</code>)</td>
<td>The end date of the service</td>
</tr>
<tr>
<td><code>active</code></td>
<td><code>Yes</code>|<code>No</code></td>
<td>Whether the service was or not still active at the moment when it was added to the data source</td>
</tr>
<tr>
<td><code>environmental_domain</code></td>
<td>One of these values: <code>Atmospheric</code>, <code>Cross-cutting</code>, <code>Freshwater</code>, <code>Marine</code>, <code>Terrestrial</code></td>
<td>The dominant environmental domain of research for this service.</td>
</tr>
<tr>
<td><code>environmental_field</code></td>
<td>One of these values: <code>Air quality</code>, <code>Animal welfare</code>, <code>Biodiversity, nature and landscapes</code>, <code>Climate</code>, <code>Cross-cutting</code>, <code>Efficient use of resources</code>, <code>Environmental health</code>, <code>Environmental risks</code>, <code>Land</code>, <code>Noise</code>, <code>Sustainable consumption and production</code>, <code>Waste</code>, <code>Water</code></td>
<td>The dominant environmental field tackled by the service activities.</td>
</tr>
<tr>
<td><code>category</code></td>
<td>One of these values: <code>Civic science</code>, <code>Crowd-sourcing</code>, <code>DIY engineering</code>, <code>Monitoring</code>, <code>Occasional reporting</code>, <code>Passive sensing</code>, <code>Volunteer computing</code></td>
<td>The primary category of the service. The current categories have been derived from the study <a href="https://www.wilsoncenter.org/publication/citizen-science-and-policy-european-perspective"><em>Citizen Science and Policy: A European Perspective</em></a>.</td>
</tr>
<tr>
<td><code>social_uptake</code></td>
<td>One of these values: <code>Considerable</code>, <code>Large</code>, <code>Very large</code></td>
<td>
<p>The level of social uptake of the service. It basically corresponds to the index of number of participants or followers. Based on expert
knowledge:</p>
<dl>
<dt>Very large</dt>
<dd>Large number of users, tradition, excellent services with high numbers of users (above 1,000)</dd>
<dt>Large</dt>
<dd>Services that we would say good in review and with medium number of users (below 1,000)</dd>
<dt>Considerable</dt>
<dd>All others</dd>
</dl>
</td>
</tr>
<tr>
<td><code>policy_uptake</code></td>
<td><code>Yes</code>|<code>No</code></td>
<td>Whether the service results have been or have been not used for policy making</td>
</tr>
<tr>
<td><code>policy_uptake_explanation</code></td>
<td>free text</td>
<td>Brief explanation of why there is a policy uptake or no policy uptake, and which policies are impacted and how. Especially to be filled for cases where there is a policy uptake.</td>
</tr>
<tr>
<td><code>policy_relevance</code></td>
<td>One of these values: <code>Compliance assurance</code>, <code>Early-warning</code>, <code>Policy evaluation</code>, <code>Policy implementation or monitoring</code>, <code>Problem definition</code></td>
<td>Main phase of the policy cycle potentially impacted by the service actions.</td>
</tr>
<tr>
<td><code>sdg1</code>, ..., <code>sdg17</code></td>
<td>One of these values: <code>0</code> (No impact), <code>1</code> (Indirect impact), <code>2</code> (Direct impact)</td>
<td>Level of impact on each of <a href="https://sustainabledevelopment.un.org/sdgs">the 17 UN Sustainable Development Goals</a>.</td>
</tr>
</tbody>
</table>


