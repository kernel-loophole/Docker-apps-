# docker container 
#Container state and dependencies
MAILER_CID=$(docker run -d dockerinaction/ch2_mailer)
WEB_CID=$(docker create nginx)
#The reason neither the NGINX nor the agent was included with the output has to do
#with container state.
AGENT_CID=$(docker create --link $WEB_CID:insideweb \
--link $MAILER_CID:insidemailer \
dockerinaction/ch2_agent)

cid=$(docker create nginx)
echo $cid
