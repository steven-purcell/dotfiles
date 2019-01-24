# Install cool tools! #######################################################################################################################################

echo Installing Cool AWS tools
# get-ssm-params - https://github.com/justmiles/go-get-ssm-params
curl -f -L https://github.com/justmiles/go-get-ssm-params/releases/download/v1.7.0/get-ssm-params.v1.7.0.darwin-amd64 -o /usr/local/bin/get-ssm-params
chmod +x /usr/local/bin/get-ssm-params

# ecs-deploy - https://github.com/justmiles/ecs-deploy
# TODO

curl -f -L https://github.com/chrispruitt/go-get-ecs-services/releases/download/v1.3.0/get-ecs-services.v1.3.0.darwin-amd64 -o /usr/local/bin/get-ecs-services
chmod +x /usr/local/bin/get-ecs-services
#############################################################################################################################################################