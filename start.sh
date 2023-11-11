if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone /Movie.com /Movie.com
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie.com
fi
cd /Movie.com
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
