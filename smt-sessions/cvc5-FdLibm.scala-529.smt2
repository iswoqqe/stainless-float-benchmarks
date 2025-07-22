; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2989 () Bool)

(assert start!2989)

(declare-fun res!13079 () Bool)

(declare-fun e!9057 () Bool)

(assert (=> start!2989 (=> (not res!13079) (not e!9057))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2989 (= res!13079 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2989 e!9057))

(assert (=> start!2989 true))

(declare-datatypes ((array!1282 0))(
  ( (array!1283 (arr!559 (Array (_ BitVec 32) (_ BitVec 32))) (size!559 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1282)

(declare-fun array_inv!507 (array!1282) Bool)

(assert (=> start!2989 (array_inv!507 iq!146)))

(declare-datatypes ((array!1284 0))(
  ( (array!1285 (arr!560 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!560 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1284)

(declare-fun array_inv!508 (array!1284) Bool)

(assert (=> start!2989 (array_inv!508 q!79)))

(declare-fun b!16640 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!16640 (= e!9057 (and (bvsgt j!78 #b00000000000000000000000000000000) (let ((ix!184 (bvsub jz!49 j!78))) (or (bvslt ix!184 #b00000000000000000000000000000000) (bvsge ix!184 (size!559 iq!146))))))))

(declare-fun b!16637 () Bool)

(declare-fun res!13080 () Bool)

(assert (=> b!16637 (=> (not res!13080) (not e!9057))))

(declare-fun qInv!0 (array!1284) Bool)

(assert (=> b!16637 (= res!13080 (qInv!0 q!79))))

(declare-fun b!16639 () Bool)

(declare-fun res!13078 () Bool)

(assert (=> b!16639 (=> (not res!13078) (not e!9057))))

(declare-fun iqInv!0 (array!1282) Bool)

(assert (=> b!16639 (= res!13078 (iqInv!0 iq!146))))

(declare-fun b!16638 () Bool)

(declare-fun res!13077 () Bool)

(assert (=> b!16638 (=> (not res!13077) (not e!9057))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(assert (=> b!16638 (= res!13077 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (= (and start!2989 res!13079) b!16637))

(assert (= (and b!16637 res!13080) b!16638))

(assert (= (and b!16638 res!13077) b!16639))

(assert (= (and b!16639 res!13078) b!16640))

(declare-fun m!26699 () Bool)

(assert (=> start!2989 m!26699))

(declare-fun m!26701 () Bool)

(assert (=> start!2989 m!26701))

(declare-fun m!26703 () Bool)

(assert (=> b!16637 m!26703))

(declare-fun m!26705 () Bool)

(assert (=> b!16639 m!26705))

(push 1)

(assert (not b!16637))

(assert (not start!2989))

(assert (not b!16639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8311 () Bool)

(declare-fun res!13083 () Bool)

(declare-fun e!9061 () Bool)

(assert (=> d!8311 (=> (not res!13083) (not e!9061))))

(assert (=> d!8311 (= res!13083 (= (size!560 q!79) #b00000000000000000000000000010100))))

(assert (=> d!8311 (= (qInv!0 q!79) e!9061)))

(declare-fun b!16643 () Bool)

(declare-fun lambda!759 () Int)

(declare-fun all20!0 (array!1284 Int) Bool)

(assert (=> b!16643 (= e!9061 (all20!0 q!79 lambda!759))))

(assert (= (and d!8311 res!13083) b!16643))

(declare-fun m!26707 () Bool)

(assert (=> b!16643 m!26707))

(assert (=> b!16637 d!8311))

(declare-fun d!8313 () Bool)

(assert (=> d!8313 (= (array_inv!507 iq!146) (bvsge (size!559 iq!146) #b00000000000000000000000000000000))))

(assert (=> start!2989 d!8313))

(declare-fun d!8315 () Bool)

(assert (=> d!8315 (= (array_inv!508 q!79) (bvsge (size!560 q!79) #b00000000000000000000000000000000))))

(assert (=> start!2989 d!8315))

(declare-fun d!8317 () Bool)

(declare-fun res!13086 () Bool)

(declare-fun e!9064 () Bool)

(assert (=> d!8317 (=> (not res!13086) (not e!9064))))

(assert (=> d!8317 (= res!13086 (= (size!559 iq!146) #b00000000000000000000000000010100))))

(assert (=> d!8317 (= (iqInv!0 iq!146) e!9064)))

(declare-fun b!16646 () Bool)

(declare-fun lambda!762 () Int)

(declare-fun all20Int!0 (array!1282 Int) Bool)

(assert (=> b!16646 (= e!9064 (all20Int!0 iq!146 lambda!762))))

(assert (= (and d!8317 res!13086) b!16646))

(declare-fun m!26709 () Bool)

(assert (=> b!16646 m!26709))

(assert (=> b!16639 d!8317))

(push 1)

(assert (not b!16643))

(assert (not b!16646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

