#
# Copyright (C) 2018 Tobias Tefke
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Copy configuration files
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml \
    device/nb/vernee_M5/configs/audio/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
    device/nb/vernee_M5/configs/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    device/nb/vernee_M5/configs/audio/audio_param/audio_device.xml:system/vendor/etc/audio_device.xml \
    device/nb/vernee_M5/configs/audio/audio_param/audio_em.xml:system/vendor/etc/audio_em.xml \
    device/nb/vernee_M5/configs/audio/audio_param/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    device/nb/vernee_M5/configs/audio/audio_param/AudioParamOptions.xml:system/vendor/etc/audio_param/AudioParamOptions.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackACF_AudioParam.xml:system/vendor/etc/audio_param/PlaybackACF_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackACF_ParamUnitDesc.xml:system/vendor/etc/audio_param/PlaybackACF_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Playback_AudioParam.xml:system/vendor/etc/audio_param/Playback_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackDRC_AudioParam.xml:system/vendor/etc/audio_param/PlaybackDRC_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackDRC_ParamUnitDesc.xml:system/vendor/etc/audio_param/PlaybackDRC_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackHCF_AudioParam.xml:system/vendor/etc/audio_param/PlaybackHCF_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackHCF_ParamUnitDesc.xml:system/vendor/etc/audio_param/PlaybackHCF_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Playback_ParamTreeView.xml:system/vendor/etc/audio_param/Playback_ParamTreeView.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Playback_ParamUnitDesc.xml:system/vendor/etc/audio_param/Playback_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackVolAna_AudioParam.xml:system/vendor/etc/audio_param/PlaybackVolAna_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackVolAna_ParamUnitDesc.xml:system/vendor/etc/audio_param/PlaybackVolAna_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackVolDigi_AudioParam.xml:system/vendor/etc/audio_param/PlaybackVolDigi_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackVolDigi_ParamUnitDesc.xml:system/vendor/etc/audio_param/PlaybackVolDigi_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackVolUI_AudioParam.xml:system/vendor/etc/audio_param/PlaybackVolUI_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/PlaybackVolUI_ParamUnitDesc.xml:system/vendor/etc/audio_param/PlaybackVolUI_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Record_AudioParam.xml:system/vendor/etc/audio_param/Record_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/RecordDMNR_AudioParam.xml:system/vendor/etc/audio_param/RecordDMNR_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/RecordDMNR_ParamUnitDesc.xml:system/vendor/etc/audio_param/RecordDMNR_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/RecordFIR_AudioParam.xml:system/vendor/etc/audio_param/RecordFIR_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/RecordFIR_ParamUnitDesc.xml:system/vendor/etc/audio_param/RecordFIR_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Record_ParamTreeView.xml:system/vendor/etc/audio_param/Record_ParamTreeView.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Record_ParamUnitDesc.xml:system/vendor/etc/audio_param/Record_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/RecordUI_AudioParam.xml:system/vendor/etc/audio_param/RecordUI_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/RecordUI_ParamUnitDesc.xml:system/vendor/etc/audio_param/RecordUI_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/RecordVol_AudioParam.xml:system/vendor/etc/audio_param/RecordVol_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/RecordVol_ParamUnitDesc.xml:system/vendor/etc/audio_param/RecordVol_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/RecordVolUI_AudioParam.xml:system/vendor/etc/audio_param/RecordVolUI_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/RecordVolUI_ParamUnitDesc.xml:system/vendor/etc/audio_param/RecordVolUI_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Speech_AudioParam.xml:system/vendor/etc/audio_param/Speech_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechDMNR_AudioParam.xml:system/vendor/etc/audio_param/SpeechDMNR_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechDMNR_ParamUnitDesc.xml:system/vendor/etc/audio_param/SpeechDMNR_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechGeneral_AudioParam.xml:system/vendor/etc/audio_param/SpeechGeneral_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechGeneral_ParamUnitDesc.xml:system/vendor/etc/audio_param/SpeechGeneral_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechMagiClarity_AudioParam.xml:system/vendor/etc/audio_param/SpeechMagiClarity_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechMagiClarity_ParamUnitDesc.xml:system/vendor/etc/audio_param/SpeechMagiClarity_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechNetwork_AudioParam.xml:system/vendor/etc/audio_param/SpeechNetwork_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechNetwork_ParamUnitDesc.xml:system/vendor/etc/audio_param/SpeechNetwork_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Speech_ParamTreeView.xml:system/vendor/etc/audio_param/Speech_ParamTreeView.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Speech_ParamUnitDesc.xml:system/vendor/etc/audio_param/Speech_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechUI_AudioParam.xml:system/vendor/etc/audio_param/SpeechUI_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechUI_ParamUnitDesc.xml:system/vendor/etc/audio_param/SpeechUI_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechVol_AudioParam.xml:system/vendor/etc/audio_param/SpeechVol_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechVol_ParamUnitDesc.xml:system/vendor/etc/audio_param/SpeechVol_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechVolUI_AudioParam.xml:system/vendor/etc/audio_param/SpeechVolUI_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/SpeechVolUI_ParamUnitDesc.xml:system/vendor/etc/audio_param/SpeechVolUI_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIP_AudioParam.xml:system/vendor/etc/audio_param/VoIP_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIPDMNR_AudioParam.xml:system/vendor/etc/audio_param/VoIPDMNR_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIPDMNR_ParamUnitDesc.xml:system/vendor/etc/audio_param/VoIPDMNR_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIPGeneral_AudioParam.xml:system/vendor/etc/audio_param/VoIPGeneral_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIPGeneral_ParamUnitDesc.xml:system/vendor/etc/audio_param/VoIPGeneral_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIP_ParamTreeView.xml:system/vendor/etc/audio_param/VoIP_ParamTreeView.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIP_ParamUnitDesc.xml:system/vendor/etc/audio_param/VoIP_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIPUI_AudioParam.xml:system/vendor/etc/audio_param/VoIPUI_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIPUI_ParamUnitDesc.xml:system/vendor/etc/audio_param/VoIPUI_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIPVol_AudioParam.xml:system/vendor/etc/audio_param/VoIPVol_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIPVol_ParamUnitDesc.xml:system/vendor/etc/audio_param/VoIPVol_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIPVolUI_AudioParam.xml:system/vendor/etc/audio_param/VoIPVolUI_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VoIPVolUI_ParamUnitDesc.xml:system/vendor/etc/audio_param/VoIPVolUI_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Volume_AudioParam.xml:system/vendor/etc/audio_param/Volume_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VolumeGainMap_AudioParam.xml:system/vendor/etc/audio_param/VolumeGainMap_AudioParam.xml \
    device/nb/vernee_M5/configs/audio/audio_param/VolumeGainMap_ParamUnitDesc.xml:system/vendor/etc/audio_param/VolumeGainMap_ParamUnitDesc.xml \
    device/nb/vernee_M5/configs/audio/audio_param/Volume_ParamUnitDesc.xml:system/vendor/etc/audio_param/Volume_ParamUnitDesc.xml

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true
