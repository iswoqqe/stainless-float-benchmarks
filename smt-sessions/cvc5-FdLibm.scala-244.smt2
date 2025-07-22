; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1529 () Bool)

(assert start!1529)

(declare-fun b!8070 () Bool)

(declare-fun res!6699 () Bool)

(declare-fun e!4010 () Bool)

(assert (=> b!8070 (=> (not res!6699) (not e!4010))))

(declare-datatypes ((array!597 0))(
  ( (array!598 (arr!262 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!262 (_ BitVec 32))) )
))
(declare-fun q!51 () array!597)

(declare-fun qInv!0 (array!597) Bool)

(assert (=> b!8070 (= res!6699 (qInv!0 q!51))))

(declare-fun b!8071 () Bool)

(declare-datatypes ((Unit!528 0))(
  ( (Unit!529) )
))
(declare-datatypes ((tuple3!118 0))(
  ( (tuple3!119 (_1!180 Unit!528) (_2!180 (_ BitVec 32)) (_3!159 array!597)) )
))
(declare-fun e!4012 () tuple3!118)

(declare-fun lt!3849 () (_ BitVec 32))

(declare-fun lt!3851 () array!597)

(declare-fun Unit!530 () Unit!528)

(assert (=> b!8071 (= e!4012 (tuple3!119 Unit!530 lt!3849 lt!3851))))

(declare-fun b!8073 () Bool)

(declare-fun res!6704 () Bool)

(declare-fun e!4013 () Bool)

(assert (=> b!8073 (=> (not res!6704) (not e!4013))))

(declare-fun xx!50 () array!597)

(declare-fun xxInv!0 (array!597) Bool)

(assert (=> b!8073 (= res!6704 (xxInv!0 xx!50))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun b!8074 () Bool)

(declare-fun e!19 () (_ BitVec 32))

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!597 (_ BitVec 32) array!597) tuple3!118)

(assert (=> b!8074 (= e!4012 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3849 lt!3851))))

(declare-fun b!8075 () Bool)

(declare-fun res!6701 () Bool)

(assert (=> b!8075 (=> (not res!6701) (not e!4010))))

(declare-fun f!79 () array!597)

(declare-fun fInv!0 (array!597) Bool)

(assert (=> b!8075 (= res!6701 (fInv!0 f!79))))

(declare-fun b!8076 () Bool)

(declare-fun e!4014 () Bool)

(assert (=> b!8076 (= e!4013 e!4014)))

(declare-fun res!6700 () Bool)

(assert (=> b!8076 (=> (not res!6700) (not e!4014))))

(declare-fun lt!3848 () (_ BitVec 32))

(assert (=> b!8076 (= res!6700 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3848 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3848) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8076 (= lt!3848 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8077 () Bool)

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!8077 (= e!4010 (and (bvsle i!190 jz!36) (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!8072 () Bool)

(assert (=> b!8072 (= e!4014 e!4010)))

(declare-fun res!6702 () Bool)

(assert (=> b!8072 (=> (not res!6702) (not e!4010))))

(assert (=> b!8072 (= res!6702 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3850 () tuple3!118)

(assert (=> b!8072 (= lt!3850 e!4012)))

(declare-fun c!892 () Bool)

(assert (=> b!8072 (= c!892 (bvsle lt!3849 (bvadd (bvsub (size!262 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8072 (= lt!3849 #b00000000000000000000000000000000)))

(assert (=> b!8072 (= lt!3851 (array!598 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun res!6703 () Bool)

(assert (=> start!1529 (=> (not res!6703) (not e!4013))))

(assert (=> start!1529 (= res!6703 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1529 e!4013))

(declare-fun array_inv!212 (array!597) Bool)

(assert (=> start!1529 (array_inv!212 f!79)))

(assert (=> start!1529 (array_inv!212 q!51)))

(assert (=> start!1529 true))

(assert (=> start!1529 (array_inv!212 xx!50)))

(assert (= (and start!1529 res!6703) b!8073))

(assert (= (and b!8073 res!6704) b!8076))

(assert (= (and b!8076 res!6700) b!8072))

(assert (= (and b!8072 c!892) b!8074))

(assert (= (and b!8072 (not c!892)) b!8071))

(assert (= (and b!8072 res!6702) b!8075))

(assert (= (and b!8075 res!6701) b!8070))

(assert (= (and b!8070 res!6699) b!8077))

(declare-fun m!16011 () Bool)

(assert (=> b!8074 m!16011))

(declare-fun m!16013 () Bool)

(assert (=> b!8075 m!16013))

(declare-fun m!16015 () Bool)

(assert (=> start!1529 m!16015))

(declare-fun m!16017 () Bool)

(assert (=> start!1529 m!16017))

(declare-fun m!16019 () Bool)

(assert (=> start!1529 m!16019))

(declare-fun m!16021 () Bool)

(assert (=> b!8073 m!16021))

(declare-fun m!16023 () Bool)

(assert (=> b!8070 m!16023))

(push 1)

(assert (not b!8074))

(assert (not b!8073))

(assert (not b!8075))

(assert (not b!8070))

(assert (not start!1529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

