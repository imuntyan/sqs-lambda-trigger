~/.aws/set-temp-session.sh XXXXXX
source ~/.aws/set-default-profile.sh default-tmp
~/.aws/assume-role.sh lab
source ~/.aws/set-default-profile.sh nw-lab-tmp
aws s3 ls
