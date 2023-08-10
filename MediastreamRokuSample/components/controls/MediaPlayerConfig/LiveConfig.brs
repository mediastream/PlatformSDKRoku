function getLiveConfig(config as dynamic, msConfig as dynamic) as object
  configData = {}
  configData = config
  configData.id = "64addf1ef36ef35077f2997e"
  configData.accountID = "64a2f7945ea2ca18c978b025"
  configData.type = msConfig.videoTypes.LIVE
  configData.videoFormat = msConfig.audioVideoFormat.DASH
  configData.environmentType = msConfig.environmentType.DEV
  return configData
end function
