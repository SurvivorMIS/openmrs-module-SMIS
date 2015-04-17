<div class="info-section most-recent-encounter">
    <div class="info-header">
        
        <h3>${ ui.message("SurvivorMIS.personalInformation.fragment.label") }</h3>
    </div>
    <div class="info-body">
	<ul>
		<!--Staff Observations-->
        <% if (StaffObservations) { %>
            <li><span class="status active"></span> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/editHtmlFormWithSimpleUi", [ patientId: patient.patient.id, encounterId: StaffObservations.id, returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.StaffObservations.label") }</a></li>
        <% } else { %>
        	<!--Note that these names are hard coded into the view using the module messages.properties file-->
        	<% if (activeVisit) { %>
        		<li><i class="icon-warning-sign small"></i> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "34c39929-5f09-422f-98e7-50a998ec4b85",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.StaffObservations.label") }</a></li>
        	<% } else { %>
        		<li>${ ui.message("SurvivorMIS.personalInformation.no_active_visit.message") } ${ ui.message("SurvivorMIS.personalInformation.StaffObservations.label") }</li>
        	<% } %>
        <% } %>  
        <!--Identification-->
        <% if (Identification) { %>
            <li><span class="status active"></span> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/editHtmlFormWithSimpleUi", [ patientId: patient.patient.id, encounterId: Identification.id, returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.Identification.label") }</a></li>
        <% } else { %>
        	<!--Note that these names are hard coded into the view using the module messages.properties file-->
        	<% if (activeVisit) { %>
        		<li><i class="icon-warning-sign small"></i> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "a8e954f6-5320-4fc2-8b6f-f3b5e2791b64",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.Identification.label") }</a></li>
        	<% } else { %>
        		<li>${ ui.message("SurvivorMIS.personalInformation.no_active_visit.message") } ${ ui.message("SurvivorMIS.personalInformation.Identification.label") }</li>
        	<% } %>
        <% } %>   
        <!--Emergency Contact Information-->
        <% if (EmergencyContact) { %>
            <li><span class="status active"></span> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/editHtmlFormWithSimpleUi", [ patientId: patient.patient.id, encounterId: EmergencyContact.id, returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.EmergencyContact.label") }</a></li>
        <% } else { %>
        	<!--Note that these names are hard coded into the view using the module messages.properties file-->
        	<% if (activeVisit) { %>
        		<li><i class="icon-warning-sign small"></i> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "45caf8a9-4744-4a3e-8340-38d95bba687b",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.EmergencyContact.label") }</a></li>
        	<% } else { %>
        		<li>${ ui.message("SurvivorMIS.personalInformation.no_active_visit.message") } ${ ui.message("SurvivorMIS.personalInformation.EmergencyContact.label") }</li>
        	<% } %>
        <% } %> 
        <!--Family History-->
        <% if (FamilyHistory) { %>
            <li><span class="status active"></span> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/editHtmlFormWithSimpleUi", [ patientId: patient.patient.id, encounterId: FamilyHistory.id, returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.FamilyHistory.label") }</a></li>
        <% } else { %>
        	<!--Note that these names are hard coded into the view using the module messages.properties file-->
        	<% if (activeVisit) { %>
        		<li><i class="icon-warning-sign small"></i> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "59685aab-0b60-4420-829d-c7f596d93789",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.FamilyHistory.label") }</a></li>
        	<% } else { %>
        		<li>${ ui.message("SurvivorMIS.personalInformation.no_active_visit.message") } ${ ui.message("SurvivorMIS.personalInformation.FamilyHistory.label") }</li>
        	<% } %>
        <% } %> 
        <!--Education Background-->
        <% if (EducationBackground) { %>
            <li><span class="status active"></span> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/editHtmlFormWithSimpleUi", [ patientId: patient.patient.id, encounterId: EducationBackground.id, returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.EducationBackground.label") }</a></li>
        <% } else { %>
        	<!--Note that these names are hard coded into the view using the module messages.properties file-->
        	<% if (activeVisit) { %>
        		<li><i class="icon-warning-sign small"></i> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "bbdcf1ed-1508-4838-a7d9-9ede99c9917d",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.EducationBackground.label") }</a></li>
        	<% } else { %>
        		<li>${ ui.message("SurvivorMIS.personalInformation.no_active_visit.message") } ${ ui.message("SurvivorMIS.personalInformation.EducationBackground.label") }</li>
        	<% } %>
        <% } %> 
        <!--Relationship Information-->
        <% if (RelationshipInformation) { %>
            <li><span class="status active"></span> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/editHtmlFormWithSimpleUi", [ patientId: patient.patient.id, encounterId: RelationshipInformation.id, returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.RelationshipInformation.label") }</a></li>
        <% } else { %>
        	<!--Note that these names are hard coded into the view using the module messages.properties file-->
        	<% if (activeVisit) { %>
        		<li><i class="icon-warning-sign small"></i> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "e83fa485-4871-41ab-b51b-496816411d1e",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.RelationshipInformation.label") }</a></li>
        	<% } else { %>
        		<li>${ ui.message("SurvivorMIS.personalInformation.no_active_visit.message") } ${ ui.message("SurvivorMIS.personalInformation.RelationshipInformation.label") }</li>
        	<% } %>
        <% } %> 
        <!--Case Creation-->
        <% if (CaseCreation) { %>
            <li><span class="status active"></span> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/editHtmlFormWithSimpleUi", [ patientId: patient.patient.id, encounterId: CaseCreation.id, returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.CaseCreation.label") }</a></li>
        <% } else { %>
        	<!--Note that these names are hard coded into the view using the module messages.properties file-->
        	<% if (activeVisit) { %>
        		<li><i class="icon-warning-sign small"></i> <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "3ab26492-c1d2-4075-bc10-b23212f92eca",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.personalInformation.CaseCreation.label") }</a></li>
        	<% } else { %>
        		<li>${ ui.message("SurvivorMIS.personalInformation.no_active_visit.message") } ${ ui.message("SurvivorMIS.personalInformation.CaseCreation.label") }</li>
        	<% } %>
        <% } %> 
	</ul>
    </div>
</div>