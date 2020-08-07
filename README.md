# TWRP Device configuration for Motorola One Zoom

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core (2x2.0 GHz Kryo 460 Gold & 6x1.7 GHz Kryo 460 Silver)
CHIPSET | Qualcomm SDM675 Snapdragon 675
GPU     | Adreno 612
Memory  | 4 / 6GB
Shipped Android Version | 8.1 (Oreo)
Storage | 128GB
Battery | 4000 mAh
Dimensions | 158 x 75 x 8.8 mm
Display | 1080 x 2340 pixels, 6.39" Super AMOLED
Rear Camera  | 48 MP (f/1.7) + 8 MP (f/2.4) + 16 MP (f/2.2) + 5 MP (f/2.2) (PDAF, OIS)
Front Camera | 25 MP (f/2.0)

![Device Picture](https://fdn2.gsmarena.com/vv/pics/motorola/motorola-one-zoom-r1.jpg)

### Kernel Source
Check here: https://github.com/ixmoe/android_kernel_motorola_sm6150

### How to compile

```sh
. build/envsetup.sh
lunch omni_parker-eng
make -j4 recoveryimage
```
### Copyright
 ```
  /*
  *  Copyright (C) 2013-20 The OmniROM Project
  *
  * This program is free software: you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation, either version 3 of the License, or
  * (at your option) any later version.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  *
  */
  ```
