<%
    ui.decorateWith("appui", "standardEmrPage")
%>
<script type="text/javascript">
    var breadcrumbs = [
        { icon: "icon-home", link: '/' + OPENMRS_CONTEXT_PATH + '/index.htm' },
        { label: "${ ui.format(patient.patient.familyName) }, ${ ui.format(patient.patient.givenName) }" ,
        link: '${ui.pageLink("SurvivorMIS", "SurvivorOverview", [patientId: patient.patient.id])}'}
    ]
    var patient = { id: ${ patient.id } };
</script>

<% if(includeFragments){
    includeFragments.each{ %>
        ${ ui.includeFragment(it.extensionParams.provider, it.extensionParams.fragment)}
<%   }
} %>

${ ui.includeFragment("coreapps", "patientHeader", [ patient: patient.patient, activeVisit: activeVisit, appContextModel: appContextModel ]) }

<div class="clear"></div>
<div class="container">
    <div class="dashboard clear">
        <div class="info-container column">
            ${ ui.includeFragment("SurvivorMIS", "SurvivorOverview/personalInformation", [patientId: patient]) }

        </div>
        <div class="info-container column">
            ${ ui.includeFragment("SurvivorMIS", "SurvivorOverview/visitsSection", [patient: patient]) }
        </div>
        <div class="action-container column">
            <div class="action-section">
                <% if (activeVisit) { %>
                    <ul>
                        <h3>${ ui.message("coreapps.clinicianfacing.activeVisitActions") }</h3>
                        <% visitActions.each { ext -> %>
                            <li>
                                <a href="${ ui.escapeJs(ext.url("/" + ui.contextPath(), appContextModel, ui.thisUrl())) }" id="${ ext.id }">
                                    <i class="${ ext.icon }"></i>
                                    ${ ui.message(ext.label) }
                                </a>
                            </li>
                        <% } %>
                    </ul>
                <% } %>
                <ul>
                    <h3>${ ui.message("coreapps.clinicianfacing.overallActions") }</h3>
                    <%
                        overallActions.each { ext -> %>
                            <a href="${ ui.escapeJs(ext.url("/" + ui.contextPath(), appContextModel, ui.thisUrl())) }" id="${ ext.id }">
                                <li>
                                    <i class="${ ext.icon }"></i>
                                    ${ ui.message(ext.label) }
                                </li>
                            </a>
                    <% } %>
                </ul>
                <%
                 def cxtModel = [ patientId: patient.id, activeVisitId: activeVisit ? activeVisit.visit.id : null]
                 otherActions.each { action -> %>
                <a id="${ action.id }" class="button medium" href="${ ui.escapeJs(action.url("/" + ui.contextPath(), cxtModel)) }">
                    <i class="${ action.icon }"></i>${ ui.message(action.label) }
                </a>
                <% } %>
            </div>
        </div>
    </div>
</div>
