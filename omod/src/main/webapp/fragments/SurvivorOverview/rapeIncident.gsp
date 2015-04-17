<div class="info-section most-recent-encounter">
    <div class="info-header">
        
        <h3>${ ui.message("SurvivorMIS.rapeIncident.fragment.label") }</h3>
    </div>
    <div class="info-body">
	<ul>
		<!--Rape Incidents-->
        <% if (AllRapeIncidentEncounters && AllRapeIncidentEncounters.size > 0) { %>
        	<% AllRapeIncidentEncounters.each { %>
            	<li><a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/editHtmlFormWithSimpleUi", [ patientId: patient.patient.id, encounterId: it.id, returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.rapeIncident.incidentDate.label") } ${ ui.formatDatetimePretty(it.encounterDatetime) }</a></li>-->
        	<% } %>
        <% } else { %>
        	<!--Note that these names are hard coded into the view using the module messages.properties file-->
        	<% if (activeVisit) { %>
        		<li><a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "b524b6a3-cd2a-479f-b3f9-f1abf60419ce",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.rapeIncident.addRapeIncident.label") }</a></li>
        	<% } else { %>
        		<li>${ ui.message("SurvivorMIS.rapeIncident.no_active_visit.message") } an ${ ui.message("SurvivorMIS.rapeIncident.rapeIncident.label") }</li>
        	<% } %>
        <% } %>  
	</ul>
    </div>
</div>