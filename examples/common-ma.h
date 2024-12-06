#ifdef __APPLE__
    #define MA_NO_RUNTIME_LINKING
#endif
#define MINIAUDIO_IMPLEMENTATION
#include "miniaudio.h"
#include <atomic>
#include <cstdint>
#include <vector>
#include <mutex>

//
// Miniaudio capture
//

class audio_async {
public:
  audio_async(int len_ms);
  ~audio_async();

  // bool init(int MA_CHANNEL_AUX_8pture_id, int sample_rate);
  // start capturing audio via the provided MA callback
  // keep last len_ms seconds of audio in a circular buffer

  // callback to be called by MA
  void data_callback(ma_device* pDevice, 
                     void* pOutput,
                     const void* pInput,
                     ma_uint32 frameCount) {
    ma_encoder* pEncoder = (ma_encoder*)pDevice->pUserData;
    MA_ASSERT(pEncoder != NULL);
    ma_encoder_write_pcm_frames(pEncoder, pInput, frameCount, NULL);
    (void)pOutput;  
  }

  ma_device_config config = ma_device_config_init(ma_device_type_capture);

  config.capture.format   = ma_format_f32;
  config.capture.channels = 1;
  config.capture.pDeviceID = pMyCaptureDeviceID;
  config.capture.sampleRate = 16000;
  
  // get audio data from the circular buffer

private:


  // ma_device_config config = ma_device_config_init(ma_device_type_capture);
  // config.capture.format = ma_format_u8;
  // config.capture.channels = 1;
  // config.sampleRate = 16000;
  // config.dataCallback = data_callback;
  
  // ma_device device;
  // if(ma_device_init(NULL, &config, &device) != MA_SUCCESS) {
  //   return -1;
  // };

  // ma_device_start(&device);


  // ma_device_uninit(&device);
  
  // ma_context ctx;
  // if (ma_context_init(NULL, 0, NULL, &ctx) != MA_SUCCESS) {
  //   return -1;
  // }
  
  // ma_device_info* pCaptureInfos;
  // ma_uint32 captureCount;
  // if (ma_context_get_devices(&ctx, NULL, NULL, &pCaptureInfos, &captureCount) != MA_SUCCESS) {
  //   return -1;
  // }

  // std::string ma_device_id_in = 0;

  // int m_len_ms = 0;
  // int m_sample_rate = 0;

  // std::atomic_bool m_running;
  // std::mutex       m_mutex;

  // std::vector<float> m_audio;
  // size_t             m_audio_pos = 0;
  // size_t             m_audio_len = 0;
};

// Return false if need to quit
// bool sdl_poll_events();
