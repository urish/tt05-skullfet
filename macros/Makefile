# SPDX-FileCopyrightText: 2023 Uri Shaked
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

SKULLFET_DIR = ../skullfet
GDS_DIR = $(SKULLFET_DIR)/gds
TARGETS = skullfet_inverter.gds skullfet_inverter.lef skullfet_nand.gds skullfet_nand.lef skullfet_logo.gds skullfet_logo.lef

all: build_skullfet $(TARGETS)

build_skullfet:
	make -C $(SKULLFET_DIR)

$(TARGETS): %: $(GDS_DIR)/%
	cp $< $@

.PHONY: all build_skullfet
