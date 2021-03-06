<?xml version="1.0" encoding="ISO-8859-1"?>
<!--

    TNTConcept Easy Enterprise Management by Autentia Real Bussiness Solution S.L.
    Copyright (C) 2007 Autentia Real Bussiness Solution S.L.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="no" encoding="US-ASCII"/>
<xsl:param name="context"/>
<xsl:param name="renderId"/>
<xsl:param name="token"/>

<xsl:include href="catedit.xsl"/>
<xsl:include href="changeorder.xsl"/>
<xsl:include href="controls.xsl"/>
<xsl:include href="xform.xsl"/>
<xsl:include href="xtable.xsl"/>
<xsl:include href="xtree.xsl"/>
<xsl:include href="xtabbed.xsl"/>
<xsl:include href="popup.xsl"/>

<xsl:template match="skip[@hidden='true']"/>

<xsl:template match="skip">
  <xsl:apply-templates/>
</xsl:template>

<!-- identity transform -->
<xsl:template match="*|@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="*|@*|node()"/>
  </xsl:copy>
</xsl:template>

</xsl:stylesheet>