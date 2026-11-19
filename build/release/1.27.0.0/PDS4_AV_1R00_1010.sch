<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:av  Version:1.0.1.0 - Thu Nov 19 22:29:06 UTC 2026 -->
  <!-- Generated from the PDS4 Information Model Version 1.27.0.0 - System Build 18.0	 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/av/v1" prefix="av"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="//av:AV_Container">
      <sch:assert test=" if ( not(av:duration) or matches(av:duration, '^([0-9]+)(\.([0-9]+))?$') or matches(av:duration,
        '^([0-9]{0,4}[0-9]):[0-5][0-9]:([0-5][0-9])(\.([0-9]+))?$') or matches(av:duration,
        '^[0-9]+:([0-5][0-9])(\.([0-9]+))?$') ) then true() else false() ">
        <title>//av:AV_Container/Rule</title>
        In av:AV_Container, duration must be in HHH:MM:SS.SSS format</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//av:AV_Container/pds:Local_Internal_Reference">
      <sch:assert test="pds:local_reference_type = 'av_container_parameters_to_data_object'">
        <title>//av:AV_Container/pds:Local_Internal_Reference/Rule</title>
        In av:AV_Container, Local_Internal_Reference.local_reference_type must be equal to
        'av_container_parameters_to_data_object'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//av:Track">
      <sch:assert test=" if ( not(av:track_duration) or matches(av:track_duration, '^([0-9]+)(\.([0-9]+))?$') or
        matches(av:track_duration, '^([0-9]{0,4}[0-9]):[0-5][0-9]:([0-5][0-9])(\.([0-9]+))?$') or
        matches(av:track_duration, '^[0-9]+:([0-5][0-9])(\.([0-9]+))?$') ) then true() else false() ">
        <title>//av:Track/Rule</title>
        In av:Track, duration must be in HHH:MM:SS.SSS format</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="av:AV_Container/av:container_type">
      <sch:assert test=". = ('M4A', 'MP4', 'None', 'Other', 'WAV')">
        <title>av:AV_Container/av:container_type/av:container_type</title>
        The attribute av:AV_Container/av:container_type must be equal to one of the following values 'M4A', 'MP4', 'None', 'Other', 'WAV'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="av:Audio_Track/av:audio_codec">
      <sch:assert test=". = ('AAC', 'Other', 'WAV')">
        <title>av:Audio_Track/av:audio_codec/av:audio_codec</title>
        The attribute av:Audio_Track/av:audio_codec must be equal to one of the following values 'AAC', 'Other', 'WAV'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="av:Track/av:handler_class">
      <sch:assert test=". = ('Data Handler', 'Media Handler')">
        <title>av:Track/av:handler_class/av:handler_class</title>
        The attribute av:Track/av:handler_class must be equal to one of the following values 'Data Handler', 'Media Handler'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="av:Track/av:handler_type">
      <sch:assert test=". = ('Alias Data', 'Audio Track', 'Camera Metadata', 'Clock Reference', 'Data', 'Hint Track', 'IPMP', 'MPEG-7 Stream', 'MPEG-J', 'Metadata', 'Metadata', 'Metadata', 'Metadata Tags', 'NRT Metadata', 'Object Content', 'Object Descriptor', 'Picture', 'Private', 'Scene Description', 'Subpicture', 'Subtitle', 'Text', 'Time Code', 'URL', 'Video Track')">
        <title>av:Track/av:handler_type/av:handler_type</title>
        The attribute av:Track/av:handler_type must be equal to one of the following values 'Alias Data', 'Audio Track', 'Camera Metadata', 'Clock Reference', 'Data', 'Hint Track', 'IPMP', 'MPEG-7 Stream', 'MPEG-J', 'Metadata', 'Metadata', 'Metadata', 'Metadata Tags', 'NRT Metadata', 'Object Content', 'Object Descriptor', 'Picture', 'Private', 'Scene Description', 'Subpicture', 'Subtitle', 'Text', 'Time Code', 'URL', 'Video Track'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="av:Video_Track/av:video_codec">
      <sch:assert test=". = ('H.264', 'Other')">
        <title>av:Video_Track/av:video_codec/av:video_codec</title>
        The attribute av:Video_Track/av:video_codec must be equal to one of the following values 'H.264', 'Other'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
