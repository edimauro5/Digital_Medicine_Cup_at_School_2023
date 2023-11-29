<?xml version="1.0" encoding="UTF-8" ?>
<Package name="Medicine_Cup" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="ExampleDialog" src="behavior_1/ExampleDialog/ExampleDialog.dlg" />
        <Dialog name="Medicine_Cup" src="Medicine_Cup/Medicine_Cup.dlg" />
    </Dialogs>
    <Resources>
        <File name="__init__" src="Libreria MQTT/paho/__init__.py" />
        <File name="__init__" src="Libreria MQTT/paho/mqtt/__init__.py" />
        <File name="client" src="Libreria MQTT/paho/mqtt/client.py" />
        <File name="matcher" src="Libreria MQTT/paho/mqtt/matcher.py" />
        <File name="publish" src="Libreria MQTT/paho/mqtt/publish.py" />
        <File name="subscribe" src="Libreria MQTT/paho/mqtt/subscribe.py" />
    </Resources>
    <Topics>
        <Topic name="ExampleDialog_iti" src="behavior_1/ExampleDialog/ExampleDialog_iti.top" topicName="ExampleDialog" language="it_IT" />
        <Topic name="Medicine_Cup_iti" src="Medicine_Cup/Medicine_Cup_iti.top" topicName="Medicine_Cup" language="it_IT" />
    </Topics>
    <IgnoredPaths />
    <Translations auto-fill="en_US">
        <Translation name="translation_en_US" src="translations/translation_en_US.ts" language="en_US" />
        <Translation name="translation_it_IT" src="translations/translation_it_IT.ts" language="it_IT" />
    </Translations>
</Package>
