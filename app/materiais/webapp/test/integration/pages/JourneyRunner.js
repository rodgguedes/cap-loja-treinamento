sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"materiais/test/integration/pages/MateriaisList",
	"materiais/test/integration/pages/MateriaisObjectPage"
], function (JourneyRunner, MateriaisList, MateriaisObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('materiais') + '/test/flp.html#app-preview',
        pages: {
			onTheMateriaisList: MateriaisList,
			onTheMateriaisObjectPage: MateriaisObjectPage
        },
        async: true
    });

    return runner;
});

