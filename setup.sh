echo "Setup project Setting ..."
#git commit log template
git config --unset --global commit.cleanup strip
cp ./.gitmessage.txt ~/.gitmessage.txt
git config --global commit.template ~/.gitmessage.txt
git config --global --add commit.cleanup strip
echo "> set up commit msg template success."
#git commit log format hook
cp ./commit-msg.sample ../.git/hooks/commit-msg
cd ../.git/hooks
chmod +x commit-msg
echo "> set up commit-msg of hooks success."