; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1675 () Bool)

(assert start!1675)

(declare-fun b!8799 () Bool)

(declare-fun e!4598 () Bool)

(declare-fun e!4601 () Bool)

(assert (=> b!8799 (= e!4598 e!4601)))

(declare-fun res!7259 () Bool)

(assert (=> b!8799 (=> (not res!7259) (not e!4601))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!8799 (= res!7259 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((array!644 0))(
  ( (array!645 (arr!280 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!280 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!615 0))(
  ( (Unit!616) )
))
(declare-datatypes ((tuple3!154 0))(
  ( (tuple3!155 (_1!209 Unit!615) (_2!209 (_ BitVec 32)) (_3!177 array!644)) )
))
(declare-fun lt!4265 () tuple3!154)

(declare-fun e!4600 () tuple3!154)

(assert (=> b!8799 (= lt!4265 e!4600)))

(declare-fun c!979 () Bool)

(declare-fun lt!4263 () (_ BitVec 32))

(declare-fun xx!50 () array!644)

(assert (=> b!8799 (= c!979 (bvsle lt!4263 (bvadd (bvsub (size!280 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8799 (= lt!4263 #b00000000000000000000000000000000)))

(declare-fun lt!4262 () array!644)

(assert (=> b!8799 (= lt!4262 (array!645 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun res!7257 () Bool)

(declare-fun e!4599 () Bool)

(assert (=> start!1675 (=> (not res!7257) (not e!4599))))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1675 (= res!7257 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1675 e!4599))

(declare-fun f!79 () array!644)

(declare-fun array_inv!230 (array!644) Bool)

(assert (=> start!1675 (array_inv!230 f!79)))

(declare-fun q!51 () array!644)

(assert (=> start!1675 (array_inv!230 q!51)))

(assert (=> start!1675 true))

(assert (=> start!1675 (array_inv!230 xx!50)))

(declare-fun b!8800 () Bool)

(declare-fun Unit!617 () Unit!615)

(assert (=> b!8800 (= e!4600 (tuple3!155 Unit!617 lt!4263 lt!4262))))

(declare-fun b!8801 () Bool)

(assert (=> b!8801 (= e!4599 e!4598)))

(declare-fun res!7255 () Bool)

(assert (=> b!8801 (=> (not res!7255) (not e!4598))))

(declare-fun lt!4264 () (_ BitVec 32))

(assert (=> b!8801 (= res!7255 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4264 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4264) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8801 (= lt!4264 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8802 () Bool)

(declare-fun res!7254 () Bool)

(assert (=> b!8802 (=> (not res!7254) (not e!4601))))

(declare-fun qInv!0 (array!644) Bool)

(assert (=> b!8802 (= res!7254 (qInv!0 q!51))))

(declare-fun b!8803 () Bool)

(declare-fun res!7258 () Bool)

(assert (=> b!8803 (=> (not res!7258) (not e!4599))))

(declare-fun xxInv!0 (array!644) Bool)

(assert (=> b!8803 (= res!7258 (xxInv!0 xx!50))))

(declare-fun b!8804 () Bool)

(declare-fun res!7256 () Bool)

(assert (=> b!8804 (=> (not res!7256) (not e!4601))))

(declare-fun fInv!0 (array!644) Bool)

(assert (=> b!8804 (= res!7256 (fInv!0 f!79))))

(declare-fun b!8805 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!644 (_ BitVec 32) array!644) tuple3!154)

(assert (=> b!8805 (= e!4600 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4263 lt!4262))))

(declare-fun b!8806 () Bool)

(assert (=> b!8806 (= e!4601 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000100) #b10000000000000000000000000000000)))))))

(assert (= (and start!1675 res!7257) b!8803))

(assert (= (and b!8803 res!7258) b!8801))

(assert (= (and b!8801 res!7255) b!8799))

(assert (= (and b!8799 c!979) b!8805))

(assert (= (and b!8799 (not c!979)) b!8800))

(assert (= (and b!8799 res!7259) b!8804))

(assert (= (and b!8804 res!7256) b!8802))

(assert (= (and b!8802 res!7254) b!8806))

(declare-fun m!16439 () Bool)

(assert (=> b!8805 m!16439))

(declare-fun m!16441 () Bool)

(assert (=> b!8803 m!16441))

(declare-fun m!16443 () Bool)

(assert (=> b!8802 m!16443))

(declare-fun m!16445 () Bool)

(assert (=> b!8804 m!16445))

(declare-fun m!16447 () Bool)

(assert (=> start!1675 m!16447))

(declare-fun m!16449 () Bool)

(assert (=> start!1675 m!16449))

(declare-fun m!16451 () Bool)

(assert (=> start!1675 m!16451))

(push 1)

(assert (not start!1675))

(assert (not b!8803))

(assert (not b!8802))

(assert (not b!8805))

(assert (not b!8804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

