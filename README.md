# NICU Community Engagement Analysis

## **Table of Contents**

[Project Background](https://github.com/taneishagstamps/nicu-community-engagement-analysis/edit/main/README.md#project-background)

[Executive Summary](https://github.com/taneishagstamps/nicu-community-engagement-analysis/edit/main/README.md#project-background)

[Insights Deep Dive](https://github.com/taneishagstamps/nicu-community-engagement-analysis/edit/main/README.md#project-background)
- [User Engagement Trends](https://github.com/taneishagstamps/nicu-community-engagement-analysis/edit/main/README.md#user-engagement-trends)
- [Hospital & Email Verification Impact](https://github.com/taneishagstamps/nicu-community-engagement-analysis/edit/main/README.md#hospital--email-verification-impact)
- [Churn and Retention Patterns](https://github.com/taneishagstamps/nicu-community-engagement-analysis/edit/main/README.md#churn-and-retention-patterns)
- [User Onboarding & Early Engagement](https://github.com/taneishagstamps/nicu-community-engagement-analysis/edit/main/README.md#user-onboarding--early-engagement)
- [Engagement Dynamics](https://github.com/taneishagstamps/nicu-community-engagement-analysis/edit/main/README.md#engagement-dynamics)

[Recommendations](https://github.com/taneishagstamps/nicu-community-engagement-analysis/edit/main/README.md#project-background)

[Clarifying Questions, Assumptions, and Caveats](https://github.com/taneishagstamps/nicu-community-engagement-analysis/edit/main/README.md#clarifying-questions)


#

## Project Background

Hand to Hold is a national nonprofit organization dedicated to providing emotional support to families before, during, and after a NICU stay — including bereaved parents. The organization connects families with peer mentors, support groups, educational resources, and mental health support to help reduce isolation and improve emotional outcomes during one of the most challenging times in a parent’s life.

In September 2022, Hand to Hold launched a community app to expand access to support beyond in-person and hospital-based programs. Through the app, NICU and bereaved parents can connect with peers, join virtual groups, ask questions, and explore curated resources in a safe, supportive space. Since launch, the app has onboarded over 3,500 users. However, maintaining long-term engagement has been a challenge. I'm partnering with the Program Director and Community Manager to analyze user engagement and retention within their community app to help uncover patterns in user behavior, identify opportunities to improve retention, and help more families stay connected to the emotional support they need.

## Executive Summary

This analysis of 3,500 user records from 2022-2025 reveals consistently high churn rates within the Hand to Hold community app, with an average churn of 90% and a notable improvement to 67% in February 2025. Most users disengage within the first 30 days, though recent retention gains suggest that onboarding or programmatic changes may be positively impacting user behavior.

Engagement is concentrated among users affiliated with partner hospitals and those who identify as NICU moms, with posts and comments driving most of the in-app activity. However, the majority of users never interact beyond registration, signaling a need for stronger early touchpoints and support pathways.

This project supports program strategy by identifying which user segments stay engaged, when churn typically occurs, and how outreach can be tailored based on user type, NICU year, and geographic trends. By refining onboarding, automating re-engagement efforts, and personalizing support through cohort-based outreach, Hand to Hold can deepen user connection and deliver more consistent, long-term emotional support to NICU and bereaved families.

## Insights Deep Dive

### User Engagement Trends
- The app currently has a low recent engagement rate — only 7.76% of users have been active in the past 30 days.
- Engagement levels vary widely. While the average is 4.38 interactions per user, over 75% of users have 0 engagement, indicating a heavy reliance on a small set of highly active users.
- Likes are the most common interaction type (8,922 total), followed by comments (3,459) and posts (1,777).
- Users who engage (post, comment, or like) stay active ~72.5 days, while those who don't engage are active for less than 55 days.
- Users who post or comment have an average lifespan of 164 days, nearly 3× longer than non-posters.

| User Group     | Total Users | Avg. Days Active |
|----------------|-------------|------------------|
| Posted         | 601         | 164.2            |
| Never Posted   | 2635        | 54.4             |



### Hospital & Email Verification Impact
- Surprisingly, users from non-partner hospitals are 8x more engaged (avg: 6.38) than partner hospital users (avg: 0.82).
- Unverified users also showed higher engagement than verified users (5.08 vs. 1.28), with the most engaged users coming from the non-partner, unverified segment.
![image](https://github.com/user-attachments/assets/0db63e73-9f55-4c02-8d84-467cd674b3c7)

- Email verification and partner hospital affiliation may unintentionally correlate with lower engagement. This could suggest UX friction during onboarding or variations in user motivation.

### Churn and Retention Patterns
- Churn remains high across the board:
  - 30-day churn: 62.6%
  - 60-day churn: 73.0%
  - 90-day churn: 78.5%

- Retention improves slightly for users from 2023 and earlier, suggesting that newer users (2024–2025) may require better onboarding or value delivery.
- Posting/commenting is a major behavioral indicator of retention. These users stay nearly 3x longer than lurkers.

### User Onboarding & Early Engagement
- Over the past 30 days, new signups have shown minimal to no engagement, averaging 0.00–0.14 interactions/day.
- Despite continuous user acquisition, new users are not being successfully activated post-registration.

### Engagement Dynamics
- There’s a modest correlation (0.26) between engagement and the number of active days.
- This relationship is not linear — most users don’t engage at all, but those who do are significantly more retained and active.
- A small cluster of highly active users contributes the majority of interactions, highlighting the platform’s dependence on a small core.
- Nurturing this power-user base while converting casual users into mid-level contributors could improve long-term retention.

## Recommendations 

### Maximizing User Engagement
- Activate Early Engagement: Guide new users through the platform with onboarding prompts encouraging their first post, comment, or like. Use “quick start” tutorials and auto-generated welcome messages in community groups to reduce friction to first interaction.
- Encourage Lightweight Interactions: Since likes are the most popular action, introduce additional low-effort engagement features (e.g., reactions, polls, emoji replies) to transition passive users into active contributors.
- Incentivize First Actions: Offer digital rewards (badges, thank-you banners, or community highlights) for first-time posts or comments to jumpstart user journeys and reinforce contribution behavior.


### Improving Retention and Reducing Churn
- Prioritize Engagement Within 7 Days: Since the majority of churn happens within 30 days, implement targeted engagement triggers (push notifications, emails) during the critical first week to reduce early drop-offs.
- Retain High-Potential Segments: Focus on users who have posted or commented, as they exhibit significantly longer lifespans. Create exclusive spaces or content for active users to reinforce long-term value.
- Introduce Re-Engagement Campaigns: Launch reactivation strategies for inactive users using milestone emails (“You joined 1 month ago—come see what’s new”) or personalized recommendations based on their original interests.

### Segment-Specific Strategy Enhancements
- Support Partner Hospital Users Differently: Partner hospital users show low engagement. Co-design onboarding and communication materials with partner hospitals to better align with their patient needs and expectations.
- Capitalize on Non-Partner Hospital Users: This group demonstrates high organic engagement. Promote their success stories, gather testimonials, and consider peer-led community initiatives that tap into their motivation.

### Optimizing Email Verification and Onboarding
- Improve Verification UX: Simplify the email verification process or delay it until after first engagement. Many high-engagement users skip this step, indicating potential UX friction.
- Segment Communication by Verification Status: Deliver personalized messaging based on verification status to maximize relevance — unverified users may benefit more from trust-building messages, while verified users may need community highlights or feature callouts.

### Data and Measurement Strategy
- Track Behavioral Micro-Conversions: Introduce tracking for passive interactions (e.g., time spent in app, views, scrolls) to gain a fuller picture of engagement beyond likes and posts.
- Build Lifecycle-Based Metrics: Create user lifecycle cohorts (e.g., New, Engaged, Dormant) and tailor content, features, and campaigns to their specific journey stage.
- Regularly Monitor Segment Performance: Use dashboards to track engagement, churn, and retention by hospital type, verification status, and user role to identify friction points and best-performing groups.



## Clarifying Questions, Assumptions, and Caveats

### Clarifying Questions
- What qualifies a user as "active"? For this analysis, users are considered active if their `last_seen` date falls within the past 30 days.
- Are `number_of_posts`, `number_of_comments`, and `number_of_likes` cumulative totals or timestamped logs? For this version, we assume these are cumulative.
- Is `user_type` self-selected during onboarding, or derived from usage?
- What activity qualifies as a `last_seen` event — login, page view, or interaction?
- What triggers a user to become `email_verified` — clicking a confirmation link or being marked as verified by an admin?
- Can a user’s verification status change over time, and are historic changes tracked?
- Do users engage through actions other than posts, comments, and likes (e.g., viewing, messaging)?
- Are any engagement metrics tracked outside this dataset (e.g., clicks, time spent)?

  
### Assumptions
- `date_registered` reflects the moment a user first created their account.
- `last_seen` is assumed to be the last date of any in-app activity.
- Users with `has_engaged = 1` have posted, commented, or liked at least once.
- Users who select “None” or “Ninguno” in the `partner_hospital` field are categorized as non-partner users.
- All date comparisons use the `CURRENT_DATE` function to simulate “today” during analysis.

### Caveats
- The dataset does not currently include timestamped event logs, so retention calculations are based on first and last activity only.
- Churn calculations may be inflated due to one-time sign-ups who never intended to return (e.g., “one-and-done” behavior).
- Some profile fields (e.g., `state`, `user_type`) may be left blank or contain inconsistent formatting, which could skew demographic breakdowns.
- Churn calculations assume a user is “lost” if they do not meet 30/60/90-day retention flags — this may not apply to users who return sporadically or use the app for brief periods during NICU stays.
- Several key fields like nicu_year, state, and user_type are frequently blank, limiting their use in demographic or geo-segmented analyses.
- The dataset includes only explicit engagement metrics (likes, posts, comments) and lacks session data or time-on-platform, which can undervalue the presence of silent but returning users.
#

- See the raw data and my cleaning, analysis, and pivot tables in the Excel workbook.
- See my SQL queries in the SQL file.

