create database viral_social_media
use viral_social_media
select * from viral_social_media_trends
select top 10 * from viral_social_media_trends
select count (*) from viral_social_media_trends where views is null or likes is null or shares is null or comments is null
select sum (cast(views as bigint)) as total_views, sum (cast(likes as bigint)) as total_likes, sum (cast(shares as bigint)) as total_shares, sum (cast(comments as bigint)) as total_comments from  viral_social_media_trends
select platform, avg (cast(views as bigint)) as avg_views, avg (cast(likes as bigint)) as avg_likes, avg (cast(shares as bigint)) as avg_shares, avg (cast(comments as bigint)) as avg_comments from viral_social_media_trends group by platform
select hashtag, avg (views) as avg_views, avg (comments) as avg_comments from viral_social_media_trends group by hashtag order by avg_views desc
select region, sum (views) as total_views, sum (shares) as total_shares from viral_social_media_trends group by region order by total_views desc
select engagement_level, avg(cast(views as float)) as avg_views, avg(cast(likes as float)) as avg_likes, avg(cast(shares as float)) as avg_shares, avg (cast(comments as float)) as avg_comments from viral_social_media_trends group by engagement_level
select top 10 * from viral_social_media_trends order by views desc
select top 10 * from viral_social_media_trends order by shares desc
select platform, engagement_level, avg(views) as avg_views from viral_social_media_trends group by platform,engagement_level order by engagement_level, avg_views desc
select region, count (post_id) as post_count, sum (views) as total_views from viral_social_media_trends group by region order by total_views desc
select top 10 hashtag, count (post_id) as post_count, avg(views) as avg_views from viral_social_media_trends group by hashtag order by avg_views desc
select platform, avg (cast(views as float)) as avg_views, avg(cast(likes as float)) as avg_likes, avg(cast(shares as float)) as avg_shares from viral_social_media_trends group by platform
select top 10 content_type, avg (try_cast (views as float)) as avg_views, avg(try_cast(likes as float)) as avg_likes, avg(try_cast(shares as float)) as avg_shares, avg(try_cast(comments as float)) as avg_comments, engagement_level from viral_social_media_trends group by content_type, engagement_level order by engagement_level desc 
select top 10 hashtag, count (post_id) as post_count, sum (views) as total_views, sum (likes) as total_likes, sum (shares) as total_shares from viral_social_media_trends group by hashtag order by total_views desc, total_likes desc, total_shares desc

