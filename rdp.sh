echo "======================="
echo elige tu región de ngrok
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3389 &>/dev/null &
echo "==============================="
sleep 2
echo "La dirección de ngrok es: $(curl -sS localhost:4040/api/tunnels | jq -r '.tunnels[0].public_url')"
echo "===================================="
