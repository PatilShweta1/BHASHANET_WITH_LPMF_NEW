from bs4 import BeautifulSoup

html_content = """
<table class='table table-hover'>
    <thead>
        <th>SL no</th>
        <th>Domain Name</th>
        <th>Ministry / Department / State</th>
    </thead>
    <tbody>
        <tr><td>1</td><td>जलशक्तिमंत्रालयपेयजलऔरस्वच्छताविभाग.सरकार.भारत</td><td>Ministry of Jal Shakti / Department of Drinking Water and Sanitation</td></tr>
        <!-- ... (other rows) ... -->
        <tr><td>54</td><td>रजिस्ट्री.सरकार.भारत</td><td>Ministry of Electronics and Information Technology / N/A</td></tr>
    </tbody>
</table>
"""

# Parse the HTML content
soup = BeautifulSoup(html_content, 'html.parser')

# Add a 4th column header
fourth_column_header = soup.new_tag('th')
fourth_column_header.string = 'New Column'
soup.thead.find('tr').append(fourth_column_header)

# Add a 4th column data to each row
for row in soup.tbody.find_all('tr'):
    fourth_column_data = soup.new_tag('td')
    fourth_column_data.string = 'Sample Data'  # You can replace this with your actual data
    row.append(fourth_column_data)

# Print the modified HTML
print(soup.prettify())
