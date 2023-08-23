function getLiveConfig(config as dynamic, msConfig as dynamic) as object
  configData = {}
  configData = config
  configData.id = "64addf1ef36ef35077f2997e"
  configData.accountID = "64a2f7945ea2ca18c978b025"
  configData.type = msConfig.videoTypes.LIVE
  configData.videoFormat = msConfig.audioVideoFormat.DASH
  ' configData.accessToken = "cBvgGKrQyREip9M1x2jqoUw8adwkTB5OPYZ2T9DBOTq1tKFqzcCBryruXT6wPPUdRaa2iMfjIYRJ"
  configData.environmentType = msConfig.environmentType.DEV
  configData.adUrl = "https://pubads.g.doubleclick.net/gampad/ads?iu=/29782907/tvazteca-roku/Programas-Roku/ventaneando/programas&env=vp&gdfp_req=1&unviewed_position_start=1&output=xml_vmap1&sz=640x480&description_url=https://www.tvazteca.com/aztecauno/completo-16-ago-2023-ventaneando&url=https://www.tvazteca.com&cmsid=2553967&vid=64dd39e220eeaf647bf93cd5&ad_rule=1&correlator="
  return configData
end function
