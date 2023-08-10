function getVODConfig(config as dynamic, msConfig as dynamic) as object
  configData = {}
  configData = config
  configData.id = "64ca8938e227788cf1ea80fe"
  configData.accountID = "64a2f7945ea2ca18c978b025"
  configData.type = msConfig.videoTypes.VOD
  configData.adUrl = "https://pubads.g.doubleclick.net/gampad/ads?iu=/21775744923/external/vmap_ad_samples&sz=640x480&cust_params=sample_ar%3Dpremidpostoptimizedpodbumper&ciu_szs=300x250&gdfp_req=1&ad_rule=1&output=vmap&unviewed_position_start=1&env=vp&impl=s&cmsid=496&vid=short_onecue&correlator="
  configData.environmentType = msConfig.environmentType.DEV
  return configData
end function
