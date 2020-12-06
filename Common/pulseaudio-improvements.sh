if [[ $(lscpu | grep "Byte Order") = *"Little Endian"* ]]; then
	echo "Little Endian"
	sudo sed -i 's/default-sample-format = s16le/default-sample-format = float32le/g' /etc/pulse/daemon.conf

else
	echo "Big Endian"
	sudo sed -i 's/default-sample-format = s16be/default-sample-format = float32be/g' /etc/pulse/daemon.conf

fi

sudo sed -i 's/resample-method = speex-float-1/resample-method = soxr-vhq/g' /etc/pulse/daemon.conf
sudo sed -i 's/realtime-priority = 5/realtime-priority = 9/g' /etc/pulse/daemon.conf
sudo sed -i 's/default-sample-rate = 44100/default-sample-rate = 48000/g' /etc/pulse/daemon.conf
sudo sed -i 's/alternate-sample-rate = 48000/alternate-sample-rate = 44100/g' /etc/pulse/daemon.conf

echo "Pulseaudio improvements successful!"
