module FFTWrappers

export wfft

using FFTW


# returns the fft and its sample frequencies
# given the function f values and its sample
# rate fs
function wfft(f, fs)
    F = fftshift(fft(f))
    freqs = fftshift(fftfreq(length(f), fs))
    return (freqs, abs.(F))
end

end # end module
