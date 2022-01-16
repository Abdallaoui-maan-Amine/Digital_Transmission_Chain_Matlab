function noisySig = addGaussianNoise(NRZ,reqSNR)
sigEner = norm(NRZ(:))^2;                    % energy of the signal
noiseEner = sigEner/(10^(reqSNR/10));        % energy of noise to be added
noiseVar = noiseEner/(length(NRZ(:))-1);     % variance of noise to be added
noiseStd = sqrt(noiseVar);                   % std. deviation of noise to be added
noise = noiseStd*randn(size(NRZ));           % noise
noisySig = NRZ+noise;                        % noisy signal