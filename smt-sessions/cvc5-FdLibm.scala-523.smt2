; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2969 () Bool)

(assert start!2969)

(declare-fun b!16559 () Bool)

(declare-fun res!12999 () Bool)

(declare-fun e!8998 () Bool)

(assert (=> b!16559 (=> (not res!12999) (not e!8998))))

(declare-datatypes ((array!1256 0))(
  ( (array!1257 (arr!547 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!547 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1256)

(declare-fun qInv!0 (array!1256) Bool)

(assert (=> b!16559 (= res!12999 (qInv!0 q!79))))

(declare-fun b!16560 () Bool)

(declare-fun res!13000 () Bool)

(assert (=> b!16560 (=> (not res!13000) (not e!8998))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun j!78 () (_ BitVec 32))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> b!16560 (= res!13000 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun res!13002 () Bool)

(assert (=> start!2969 (=> (not res!13002) (not e!8998))))

(assert (=> start!2969 (= res!13002 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2969 e!8998))

(assert (=> start!2969 true))

(declare-datatypes ((array!1258 0))(
  ( (array!1259 (arr!548 (Array (_ BitVec 32) (_ BitVec 32))) (size!548 (_ BitVec 32))) )
))
(declare-fun iq!146 () array!1258)

(declare-fun array_inv!495 (array!1258) Bool)

(assert (=> start!2969 (array_inv!495 iq!146)))

(declare-fun array_inv!496 (array!1256) Bool)

(assert (=> start!2969 (array_inv!496 q!79)))

(declare-fun b!16561 () Bool)

(declare-fun res!13001 () Bool)

(assert (=> b!16561 (=> (not res!13001) (not e!8998))))

(declare-fun iqInv!0 (array!1258) Bool)

(assert (=> b!16561 (= res!13001 (iqInv!0 iq!146))))

(declare-fun b!16562 () Bool)

(assert (=> b!16562 (= e!8998 (and (bvsgt j!78 #b00000000000000000000000000000000) (not (= (bvand jz!49 #b10000000000000000000000000000000) (bvand j!78 #b10000000000000000000000000000000))) (not (= (bvand jz!49 #b10000000000000000000000000000000) (bvand (bvsub jz!49 j!78) #b10000000000000000000000000000000)))))))

(assert (= (and start!2969 res!13002) b!16559))

(assert (= (and b!16559 res!12999) b!16560))

(assert (= (and b!16560 res!13000) b!16561))

(assert (= (and b!16561 res!13001) b!16562))

(declare-fun m!26647 () Bool)

(assert (=> b!16559 m!26647))

(declare-fun m!26649 () Bool)

(assert (=> start!2969 m!26649))

(declare-fun m!26651 () Bool)

(assert (=> start!2969 m!26651))

(declare-fun m!26653 () Bool)

(assert (=> b!16561 m!26653))

(push 1)

(assert (not b!16559))

(assert (not b!16561))

(assert (not start!2969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

