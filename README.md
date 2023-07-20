# Mediastream Platform SDK for Roku

## Overview

This library enables you to embed and manage the VOD and Live Stream player in your Roku applications.

# Usage

## Getting started

First of all we need to download the package that contains the Mediastream SDK for Roku. This can be done from the following links:

Latest version:

```
latest
```

Specified version

```
version
```

Once downloaded we need to add it to our project. To do this we need to create a folder called `source` at the base of our project and inside this folder create a new folder called `packageFile` and place MediaStreamPlayer.pkg inside it.

![alt tag](files/AddingMediastreampkg.png)

Then the sdk must be included to the channel. To do this we need to incorporate the following into your MainScene.xml

```xml
  <interface>
    <field id="msPlayerVideoStatus" type="assocarray" alwaysNotify="true"/>
    <field id="msPlayerVideoPosition" type="assocarray" alwaysNotify="true"/>
  </interface>
  <children>
    <Group id="msRokuPlayerContainer"></Group>
  </children>
```

![alt tag](files/AddingMediastreamToChannel.png)

Now it's time to initialize the SDK, to do it we need:
* Set `m.SDKPath` with the path of where Mediastream.pkg is located
* Create an object of type `MediastreamPlayer`
* Attach the created object to the `msRokuPlayerContainer` container
* Set the `msPlayerVideoPosition` and `msPlayerVideoStatus` observers with functions that allow us to handle these events.

For example, we create a function initPlayer and set Observers to exemplify:

```brightscript
function initPlayer()
    print "MainScene : initPlayer"
    m.SDKPath = "pkg:/source/packageFile/MediaStreamPlayer.pkg"
    if(m.mediaStreamPlayer <> invalid)
       m.msRokuPlayerContainer.removeChild(m.mediaStreamPlayer)
       m.mediaStreamPlayer = invalid
    end if
    m.mediaStreamPlayer = CreateObject("roSGNode", "MediaStreamPlayer")
    m.mediaStreamPlayer.id = "mediaStreamPlayer"
    m.mediaStreamPlayer.callFunc("initializeSDK", m.SDKPath)
    m.msRokuPlayerContainer.appendChild(m.mediaStreamPlayer)
end function
```