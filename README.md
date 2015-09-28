# Modular-TweetPaper
A reworked version of TweetPaper that features modular Rails engines to practice agile development.

Changing this app has made me consider the following design choices:
- Which controller should manage user sessions?
- Which controller should be responsible for establishing a Twitter client?
- Which plugin should store the needed gems?

Other changes made in this refactor of TweetPaper:
- Figaro gem is not included because it was unnecessary.
- Only the omniauth-twitter gem was used instead of the omniauth gem and the omniauth-twitter gem, which was redundant.
