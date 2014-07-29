<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/schedule">
<html>
	<head>
		 <link rel="stylesheet" type="text/css" href="xml files/style.css" />
		 <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
	</head>
<body>
	<table class="flat-table">
			<tr>
				<th>Week</th>
				<th>Date</th>
				<th>Learning Objective</th>
				<th>In-Class Activities</th>
				<th>Read</th>
				<th>Homework</th>
			</tr>
		<xsl:for-each select="class">
			<tr>
				<td class="center"><xsl:value-of select="week" /></td>
				<td class="center"><xsl:value-of select="date" /></td>
		<xsl:for-each select="learning-objective">
				<td><ul>
					<xsl:for-each select="objective">
						<li><xsl:value-of select="." /></li>
					</xsl:for-each>
				</ul></td>
		</xsl:for-each>
		<xsl:for-each select="class-activities">
				<td><ul>
					<xsl:for-each select="activity">
						<li>
							<xsl:value-of select="." /></li>
					</xsl:for-each>
				</ul></td>
		</xsl:for-each>
		<xsl:for-each select="readings">
					<td><ul>
						<xsl:for-each select="article">
							<li><xsl:value-of select="." /></li>
						</xsl:for-each>
					</ul></td>
			</xsl:for-each>				
			<xsl:for-each select="assignments">
				<td><ul>
					<xsl:for-each select="homework">
						<li><xsl:value-of select="." /></li>
					</xsl:for-each>
				</ul></td>
		</xsl:for-each>
			</tr>
		</xsl:for-each>
	</table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>