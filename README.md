> [!NOTE]
> The v1 database is deprecated and no longer supported. Please migrate to v2.

# Dumpstarr Database for Profilarr

## **For a media setup that isn't a dumpster fire :D**

[![Discord](https://img.shields.io/discord/1408095311661891796?label=Discord&logo=discord&style=for-the-badge)](https://discord.gg/TbYW2Q4hGv)

---

### **Simple, Set-and-Forget Custom Formats**

The Dumpstarr database for Profilarr is a curated collection of **custom formats** for **Sonarr** and **Radarr**, designed to simplify sourcing high-quality, decently sized media.

**Our Focus:**
* **Simplicity:** Choose your resolution.
* **Quality Sourcing:** We use a set of formats/regex based on **Dictionarry** and **TRaSH** to better score and source your media.

---

### **Profile Selection Guide**

> [!TIP]
> We recommend starting with the `Movies 1080p/2160p` and `TV 1080p/2160p` profiles.

| Profile | Media Type | Use Case |
| :--- | :--- | :--- |
| `1080p LQ` | Low-Priority Media | Maximum storage savings |
| `Anime 1080p` | Anime | Anime TV and Movies |
| `TV 1080p` | TV Shows |1080p |
| `TV 2160p` | 4K TV Shows | 4K with HDR and Dolby Vision |
| `Movies 1080p` | 1080p Movies | Streaming Optimized 1080p |
| `Movies 2160p` | 4K Movies | Streaming Optimized 4K with HDR and Dolby Vision |
| `Movies 1080p HQ` | HQ Movies | 1080p, higher video bitrates and HQ audio formats |
| `Movies 2160p HQ` | HQ 4K Movies | 4K, higher video bitrates and HQ audio formats |

> On the Movies profiles, we explicitly deny x265 for resolutions lower than 2160p since these releases are usually re-encodes, for more info on this logic, see the [TRaSH Guides](https://trash-guides.info/Sonarr/sonarr-collection-of-custom-formats/#x265-hd) documentation. If you'd prefer x265 releases, you can update the score of the "**x265 (HD)**" format to **0** on the selected profile.

---

### **Underlying Structure and Tiers**

Our profiles are loosely based on the structure of the **SQP-1 Alternative (Radarr)** and **WEB-2160p/1080p Alternative (Sonarr)** profiles from TRaSH.

* **Release Group Tiers:** We default to the [Dictionarry](https://github.com/Dictionarry-Hub/database) group tiers (2160p, 1080p, 720p, 576p, 480p, WEB and Remux).
* **Alternative Groups:** The [TRaSH Guides](https://trash-guides.info/) tiers are also included if you prefer to use those instead.

---

### **Fixes & Features**

We include several specific fixes and features for common media-sourcing annoyances:

* **Automatic Sync** of the Dictionarry Group Tiers.
* **Adventure Time Season 8 Fix:** Correctly sources releases that follow TheTVDB ordering.
* **Bad Multis:** Fixes issues with certain multi-episode releases that are incorrectly ordered, labeled, etc.
* **Bad Naming Scheme:** Fixes issues with releases where the release name causes incorrect parsing or loops.
* **The Big Bang Theory Fix:** Avoids 25fps PAL versions.
* **House Season 6 Fix:** Correctly sources releases that follow TheTVDB ordering.
* **Parks and Recreation Fix:** Negates releases that follow bad naming schemes.
* **Scrubs Fix:** Avoids 25fps PAL versions.
* **Whose Line Is It Anyway (US) Fix:** Targets correct releases for early seasons of the US version due to inconsistent naming.
