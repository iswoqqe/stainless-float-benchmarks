; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1527 () Bool)

(assert start!1527)

(declare-fun b!8049 () Bool)

(declare-datatypes ((array!595 0))(
  ( (array!596 (arr!261 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!261 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!525 0))(
  ( (Unit!526) )
))
(declare-datatypes ((tuple3!116 0))(
  ( (tuple3!117 (_1!179 Unit!525) (_2!179 (_ BitVec 32)) (_3!158 array!595)) )
))
(declare-fun e!3992 () tuple3!116)

(declare-fun lt!3838 () (_ BitVec 32))

(declare-fun lt!3837 () array!595)

(declare-fun Unit!527 () Unit!525)

(assert (=> b!8049 (= e!3992 (tuple3!117 Unit!527 lt!3838 lt!3837))))

(declare-fun b!8050 () Bool)

(declare-fun e!3991 () Bool)

(declare-fun e!3994 () Bool)

(assert (=> b!8050 (= e!3991 e!3994)))

(declare-fun res!6686 () Bool)

(assert (=> b!8050 (=> (not res!6686) (not e!3994))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!3839 () (_ BitVec 32))

(assert (=> b!8050 (= res!6686 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3839 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3839) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8050 (= lt!3839 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8051 () Bool)

(declare-fun res!6684 () Bool)

(assert (=> b!8051 (=> (not res!6684) (not e!3991))))

(declare-fun xx!50 () array!595)

(declare-fun xxInv!0 (array!595) Bool)

(assert (=> b!8051 (= res!6684 (xxInv!0 xx!50))))

(declare-fun res!6685 () Bool)

(assert (=> start!1527 (=> (not res!6685) (not e!3991))))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> start!1527 (= res!6685 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1527 e!3991))

(assert (=> start!1527 true))

(declare-fun array_inv!211 (array!595) Bool)

(assert (=> start!1527 (array_inv!211 xx!50)))

(declare-fun b!8052 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!8052 (= e!3994 (and (bvsle #b00000000000000000000000000000000 i!190) (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!3836 () tuple3!116)

(assert (=> b!8052 (= lt!3836 e!3992)))

(declare-fun c!889 () Bool)

(assert (=> b!8052 (= c!889 (bvsle lt!3838 (bvadd (bvsub (size!261 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8052 (= lt!3838 #b00000000000000000000000000000000)))

(assert (=> b!8052 (= lt!3837 (array!596 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8053 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!595 (_ BitVec 32) array!595) tuple3!116)

(assert (=> b!8053 (= e!3992 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3838 lt!3837))))

(assert (= (and start!1527 res!6685) b!8051))

(assert (= (and b!8051 res!6684) b!8050))

(assert (= (and b!8050 res!6686) b!8052))

(assert (= (and b!8052 c!889) b!8053))

(assert (= (and b!8052 (not c!889)) b!8049))

(declare-fun m!16005 () Bool)

(assert (=> b!8051 m!16005))

(declare-fun m!16007 () Bool)

(assert (=> start!1527 m!16007))

(declare-fun m!16009 () Bool)

(assert (=> b!8053 m!16009))

(push 1)

(assert (not b!8053))

(assert (not start!1527))

(assert (not b!8051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

