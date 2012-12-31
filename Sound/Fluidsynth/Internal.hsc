#include <bindings.dsl.h>
#include <fluidsynth.h>

module Sound.Fluidsynth.Internal where
#strict_import

#opaque_t fluid_settings_t

#ccall new_fluid_settings , IO (Ptr <fluid_settings_t>)
#ccall delete_fluid_settings , Ptr <fluid_settings_t> -> IO ()
#ccall fluid_settings_get_type , Ptr <fluid_settings_t> -> CString -> IO CInt
#ccall fluid_settings_setstr , Ptr <fluid_settings_t> -> CString \
                            -> CString -> IO CInt
#ccall fluid_settings_getstr , Ptr <fluid_settings_t> -> CString \
                            -> Ptr CString -> IO CInt
#ccall fluid_settings_setnum , Ptr <fluid_settings_t> -> CString \
                            -> CDouble -> IO CInt
#ccall fluid_settings_getnum , Ptr <fluid_settings_t> -> CString \
                            -> Ptr CDouble -> IO CInt
#ccall fluid_settings_setint , Ptr <fluid_settings_t> -> CString \
                            -> CInt -> IO CInt
#ccall fluid_settings_getint , Ptr <fluid_settings_t> -> CString \
                            -> Ptr CInt -> IO CInt

#num FLUID_NO_TYPE
#num FLUID_NUM_TYPE
#num FLUID_INT_TYPE
#num FLUID_STR_TYPE
#num FLUID_SET_TYPE

#opaque_t fluid_synth_t

#ccall new_fluid_synth , IO (Ptr <fluid_synth_t>)
#ccall delete_fluid_synth , Ptr <fluid_synth_t> -> IO ()
#ccall fluid_synth_noteon , Ptr <fluid_synth_t> -> CInt -> CInt -> CInt \
                         -> IO CInt
#ccall fluid_synth_noteoff , Ptr <fluid_synth_t> -> CInt -> CInt -> IO CInt
#ccall fluid_synth_cc , Ptr <fluid_synth_t> -> CInt -> CInt -> CInt -> IO CInt
#ccall fluid_synth_pitch_bend , Ptr <fluid_synth_t> -> CInt -> CInt -> IO CInt
#ccall fluid_synth_pitch_wheel_sens , Ptr <fluid_synth_t> -> CInt -> CInt \
                                   -> IO CInt
#ccall fluid_synth_program_change , Ptr <fluid_synth_t> -> CInt -> CInt \
                                 -> IO CInt
#ccall fluid_synth_bank_select , Ptr <fluid_synth_t> -> CInt -> CInt \
                              -> IO CInt
#ccall fluid_synth_sfload , Ptr <fluid_synth_t> -> CString -> CInt -> IO CInt
#ccall fluid_synth_sfreload , Ptr <fluid_synth_t> -> CUInt -> IO CInt
#ccall fluid_synth_sfunload , Ptr <fluid_synth_t> -> CUInt -> CInt -> IO CInt
