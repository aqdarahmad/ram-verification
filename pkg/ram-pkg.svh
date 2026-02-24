
// Description: UVM RAM package including all related UVM components

package ram_pkg;

  `include "../uvm/ram-defines.svh"
  `include "../uvm/ram-interface.svh"
  `include "../uvm/ram-trans.svh"
  `include "../uvm/ram-base-wr-seq.svh"
  `include "../uvm/ram-base-rd-seq.svh"
  `include "../uvm/ram-wr-sequencer.svh"
  `include "../uvm/ram-rd-sequencer.svh"
  `include "../uvm/ram-wr-driver.svh"
  `include "../uvm/ram-rd-driver.svh"
  `include "../uvm/ram-wr-monitor.svh"
  `include "../uvm/ram-rd-monitor.svh"
  `include "../uvm/ram-wr-agent.svh"
  `include "../uvm/ram-rd-agent.svh"
  `include "../uvm/ram-scoreboard.svh"
  `include "../uvm/ram-env.svh"
  `include "../uvm/ram-base-test.svh"

endpackage