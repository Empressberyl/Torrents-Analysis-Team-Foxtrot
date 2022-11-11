SELECT releaseType, COUNT(releaseType) AS count
FROM torrents
GROUP BY releaseType
ORDER BY count
DESC
