import os
import telebot
import urllib.request

env = os.environ

BOT_TOKEN = env.get("BOT_TOKEN")
CHAT_IDS = env.get("CHAT_IDS").split(",")
HOSTS = env.get("HOSTS").split(",")

bot = telebot.TeleBot(BOT_TOKEN)

def sites_availability():
    for host in HOSTS:
        try:
            response = urllib.request.urlopen(host).getcode()
        except urllib.request.URLError as exception:
            for chat in CHAT_IDS:
                bot.send_message(chat, f"{host} {exception}")

if __name__ == "__main__":
    sites_availability()
