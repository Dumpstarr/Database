# Dumpstarr Database for Profilarr

## **For a media setup that isn't a dumpster fire :D**

[![Discord](https://img.shields.io/discord/1408095311661891796?label=Discord&logo=discord&style=for-the-badge)](https://discord.gg/TbYW2Q4hGv)
> You can submit feature requests in our Discord

---

### **🚀 Simple, Set-and-Forget Custom Formats**

The Dumpstarr database for Profilarr is a curated collection of **custom formats** for **Sonarr** and **Radarr**, designed to simplify sourcing high-quality, decently sized media.

**Our Focus:**
* **Simplicity:** Choose your resolution and desired audio quality (Movies only).
* **Quality Sourcing:** We use a set of formats/regex based on **Dictionarry** and **TRaSH** to better score and source your media.

---

### **💾 Profile Selection Guide**

| Media Type | Profile Name | Details |
| :--- | :--- | :--- |
| **Anime TV** | `Anime 1080p` | Based on TRaSH Guides. |
| **TV Shows** | `TV 1080p` | 1080p. |
| **4K TV Shows** | `TV 2160p` | 4K with HDR and Dolby Vision. |
| **Movies** | `Movies 1080p` | Streaming Optimized 1080p. |
| **4K Movies** | `Movies 2160p` | Streaming Optimized 4K with HDR and Dolby Vision. |
| **Movies (HQ Audio)** | `Movies 1080p HQ` | 1080p with a preference for HQ audio formats. |
| **4K Movies (HQ Audio)** | `Movies 2160p HQ` | 4K with a preference for HQ audio formats. |

> **Note on x265:** We explicitly deny `x265` for resolutions lower than 2160p since these releases are usually re-encodes, for more info on this logic, see the [TRaSH Guides](https://trash-guides.info/Sonarr/sonarr-collection-of-custom-formats/#x265-hd) documentation. If you'd prefer `x265` releases, you can update the score of the "**x265 (HD)**" format to 0 on the selected profile.

---

### **🛠️ Underlying Structure and Tiers**

Our profiles are loosely based on the structure of the **SQP-1 Alternative (Radarr)** and **WEB-2160p/1080p Alternative (Sonarr)** profiles from TRaSH.

* **Release Group Tiers:** We default to the [Dictionarry](https://github.com/Dictionarry-Hub/database) group tiers (UHD, HD, 720p, WEB, Remux).
* **Alternative Groups:** The [TRaSH Guides](https://trash-guides.info/) tiers are also included if you prefer to use those instead.

---

### **✨ Fixes & Features**

We include several specific fixes and features for common media-sourcing annoyances:

* **Automatic Sync** of the Dictionarry Group Tiers.
* **Parks and Recreation Fix:** Correctly sources releases from NTb.
* **Scrubs Fix:** Avoids 25fps PAL versions.
* **HONE Fix:** Corrects issues with releases that have bad naming conventions. (Must be manually added to any profile)
