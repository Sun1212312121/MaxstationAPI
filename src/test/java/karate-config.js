function fn() {
    karate.configure('ssl', true);
    karate.configure('readTimeout', 50000);
    karate.configure('connectTimeout', 50000);

    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    var config = {
        commonUrl: "",
        clientId: "",
        dailyoperationUrl: "",
        masterdataUrl:"",
        inventoryUrl:"",
        saleUrl:"",
        reportUrl:"",
        postDayUrl:"",
        financeUrl:"",
        reportviewerUrl:"",
        reportUrl3:""
    }

    if (env == 'dev') {
        config.commonUrl = "https://dev-maxstation.pt.co.th";
        config.clientId = "xxx";
        config.dailyoperationUrl = "https://dev-pt-maxstation-dailyoperation-asv.azurewebsites.net";
        config.masterdataUrl ="https://dev-maxstation.pt.co.th/masterdata"
    } else if (env == 'uat') {
        config.commonUrl = "https://uat-maxstation.pt.co.th";
        config.clientId = "582DBE926101B5E02F0D523A5232C8DE";
        config.dailyoperationUrl = "https://uat-pt-maxstation-dailyoperation-asv.azurewebsites.net";
        config.masterdataUrl ="https://uat-maxstation.pt.co.th/masterdata";
        config.inventoryUrl = "https://uat-maxstation.pt.co.th/inventory";
        config.saleUrl="https://uat-maxstation.pt.co.th/sale";
        config.reportUrl="https://uat-maxstation.pt.co.th/report-viewer";
        config.postDayUrl="https://uat-maxstation.pt.co.th/postday";  
        config.financeUrl="https://uat-maxstation.pt.co.th/finance";      
        config.reportviewerUrl="https://uat-maxstation.pt.co.th/report-viewer";
        config.reportUrl3="https://uat-maxstation.pt.co.th/report";
    } else if (env == 'prd') {
        config.commonUrl = "https://maxstation.pt.co.th";
        config.clientId = "xxxx";
        config.dailyoperationUrl = "https://pt-maxstation-dailyoperation-asv.azurewebsites.net";
        config.masterdataUrl ="https://maxstation.pt.co.th/masterdata"
    }

    var accesstoken = karate.callSingle('classpath:helpers/GenerateToken.feature', config).accesstoken
    karate.configure('headers', {Authorization: 'Bearer ' + accesstoken})

    return config;
}