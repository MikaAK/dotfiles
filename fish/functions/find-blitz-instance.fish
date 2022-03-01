function find-blitz-instance
gcloud compute instances list | grep $argv | awk '{print $1}' | shuf | head -n 1
end
