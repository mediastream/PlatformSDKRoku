function getVODPlayerConfig(config as dynamic, msConfig as dynamic) as object
    configData = {}
    configData = config
    configData.id = "64b6f7852b37a225499e74d5"
    configData.accountID = "64a2f7945ea2ca18c978b025"
    configData.type = msConfig.videoTypes.VOD
    configData.adUrl = "https://pubads.g.doubleclick.net/gampad/ads?iu=/21775744923/external/vmap_ad_samples&sz=640x480&cust_params=sample_ar%3Dpremidpostoptimizedpodbumper&ciu_szs=300x250&gdfp_req=1&ad_rule=1&output=vmap&unviewed_position_start=1&env=vp&impl=s&cmsid=496&vid=short_onecue&correlator="
    configData.environmentType = msConfig.environmentType.DEV
    configData.setAdsDebugOutput = false
    configData.startAt = 0
    return configData
end function
