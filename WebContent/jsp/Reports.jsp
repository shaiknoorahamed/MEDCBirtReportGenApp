<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN"
   "http://www.w3.org/TR/html4/frameset.dtd">

<HTML>
<HEAD>
<TITLE>Reports</TITLE>
<script type="text/javascript" src="/MEDCBirtReportGenApp/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/MEDCBirtReportGenApp/js/report.js"> </script>

</HEAD>
<BODY style="background-color: #F0F0F0;">
	<div>
		<h3 align="center" style="color:#84A9CF">MEDC BIRT Report Web Application</h3>
		
		<div style="float: left;width: 25%;">
			<fieldset style="background-color: white;">
			<legend >
				<b style="color:#84A9CF">Select Reports</b>
			</legend>
				<ul>
				<li> <a href="javascript:void(0)" onclick="generateReport('First_Report.rptdesign')" >MEDC SCADA Reports</a></li>
				<li> <a href="javascript:void(0)" onclick="generateReport('books_report.rptdesign')">Charts Reports</a></li>
				<li> <a href="javascript:vlid(0)" onclick="generateReport('archive1.rptdesign')">Archive</a></li>
				<li> <a href="javascript:vlid(0)" onclick="generateReport('medc_operation_log_default_1_week.rptdesign')">medcOperation</a></li>
				<li> <a href="javascript:vlid(0)" onclick="generateReport('FeederLoadMonthly.rptdesign')">Feeder Load Monthly</a></li>

				</ul>
			</fieldset>
		</div>
		
		<fieldset style="background-color: white;">
			<legend>
				<b style="color:#84A9CF">Report Details:</b>
			</legend>
		
			<div id="downloadOptions" align="right">
				Dwonload Report as:  
				<a href="#" onclick="downloadReport('pdf')" >pdf</a>,
				<a href="#" onclick="downloadReport('xls')" >xls</a>,
				<a href="#" onclick="downloadReport('doc')" >doc</a>,
					
			</div>
			
			<div id="reportData" style="height: auto; background-color: white;float: left;min-width: 70%;text-align: center;" align="center">
				<br>
				Reports will be loaded here when user selects report.
			</div>
		</fieldset>
	</div>
</BODY>
</HTML>